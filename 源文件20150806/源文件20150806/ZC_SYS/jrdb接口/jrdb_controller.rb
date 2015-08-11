require "crack"
require "base64"
require "digest/md5"
class JrdbController < ApplicationController
  
  def create
    resp = Crack::XML.parse(params[:xml])
    stamp = resp["xml"]["stamp"]
    signmsg = resp["xml"]["signmsg"]
    check = Jrdb.stamp_check(stamp,signmsg)
    unless check == 1
      r = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>"
      r = r + "<xml>"
      r = r + "<iden>0</iden>"
      r = r + "<sql></sql>"
      r = r + "<status>0</status>"
      if check == -1
        r = r + "<error>#{Base64.encode64("时间戳超时")}</error>"
      else
        r = r + "<error>#{Base64.encode64("时间戳校验错误")}</error>"
      end
      r = r + "</xml>"
    else
      begin
        from = resp["xml"]["from"]
        values = resp["xml"]["values"]["value"] if resp["xml"]["values"]

        if from
          from = Base64.decode64(from).to_s
        end
        if values.class == Hash
          values = [values]
        end
        if values
          field_str = ""
          value_str =""
          values.each do |entry|
            if entry["val"]
              field_str = field_str + entry["name"].to_s + ","
              value_str = value_str + "'"+ Base64.decode64(entry["val"]).to_s.gsub("'","’") + "',"
            end
          end
          if values.size > 0
            field_str = field_str.slice(0,field_str.size - 1)
            value_str = value_str.slice(0,value_str.size - 1)
          end
        end

        base_con = ActiveRecord::Base.connection
        base_con.begin_db_transaction
        sql_str = "insert into " + from +" (#{field_str}) values (#{value_str})"
        sql_id = "select last_insert_id() as a from #{from} limit 1"
        base_con.execute(sql_str)
        results = base_con.execute(sql_id)
        base_con.commit_db_transaction

        r = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>"
        r = r + "<xml>"
        r = r + "<iden>#{results.all_hashes[0]["a"]}</iden>"
        r = r + "<sql>#{Base64.encode64(sql_str)}</sql>"
        r = r + "<status>1</status>"
        r = r + "<error></error>"
        r = r + "</xml>"
      rescue Exception => e
        r = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>"
        r = r + "<xml>"
        r = r + "<iden>0</iden>"
        if sql_str.blank?
           r = r + "<sql></sql>"
        else
          r = r + "<sql>#{Base64.encode64(sql_str)}</sql>"
        end
        r = r + "<status>0</status>"
        error = "#{e.message.to_s}\n#{e.backtrace.join("\n")}"
        r = r + "<error>#{Base64.encode64(error)}</error>" #e.message.to_s
        r = r + "</xml>"
      end
    end
    render :text => r
  end


  def update
    resp = Crack::XML.parse(params[:xml])
    stamp = resp["xml"]["stamp"]
    signmsg = resp["xml"]["signmsg"]
    check = Jrdb.stamp_check(stamp,signmsg)
    unless check == 1
      r = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>"
      r = r + "<xml>"
      r = r + "<iden>0</iden>"
      r = r + "<sql></sql>"
      r = r + "<status>0</status>"
      if check == -1
        r = r + "<error>#{Base64.encode64("时间戳超时")}</error>"
      else
        r = r + "<error>#{Base64.encode64("时间戳校验错误")}</error>"
      end
      r = r + "</xml>"
    else
      begin
        from = resp["xml"]["from"]
        id = resp["xml"]["id"]
        values = resp["xml"]["values"]["value"] if resp["xml"]["values"]

        if from
          from = Base64.decode64(from).to_s
        end
        if values.class == Hash
          values = [values]
        end
        if values
          set_str = ""
          values.each do |entry|
            if entry["val"]
              set_str = set_str +  "#{entry["name"].to_s}='#{Base64.decode64(entry["val"]).to_s.gsub("'","’") }',"
            else
              set_str = set_str +  "#{entry["name"].to_s}='',"
            end
          end
          if values.size > 0
            set_str = set_str.slice(0,set_str.size - 1)
          end
        end

        sql_str="update " + from +" set  #{set_str} where id='#{id}'"
        ActiveRecord::Base.connection.execute(sql_str)
        r = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>"
        r = r + "<xml>"
        r = r + "<sql>#{Base64.encode64(sql_str)}</sql>"
        r = r + "<status>1</status>"
        r = r + "<error></error>"
        r = r + "</xml>"
      rescue Exception => e
        r = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>"
        r = r + "<xml>"
        if sql_str.blank?
           r = r + "<sql></sql>"
        else
          r = r + "<sql>#{Base64.encode64(sql_str)}</sql>"
        end
        r = r + "<status>0</status>"
        error = "#{e.message.to_s}\n#{e.backtrace.join("\n")}"
        r = r + "<error>#{Base64.encode64(error)}</error>" #e.message.to_s
        r = r + "</xml>"
      end
    end
    render :text => r
  end


  def update_all
    resp = Crack::XML.parse(params[:xml])
    stamp = resp["xml"]["stamp"]
    signmsg = resp["xml"]["signmsg"]
    check = Jrdb.stamp_check(stamp,signmsg)
    unless check == 1
      r = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>"
      r = r + "<xml>"
      r = r + "<iden>0</iden>"
      r = r + "<sql></sql>"
      r = r + "<status>0</status>"
      if check == -1
        r = r + "<error>#{Base64.encode64("时间戳超时")}</error>"
      else
        r = r + "<error>#{Base64.encode64("时间戳校验错误")}</error>"
      end
      r = r + "</xml>"
    else
      begin
        from = resp["xml"]["from"]

        if from
          from = Base64.decode64(from).to_s
        end
        values = resp["xml"]["values"]["value"] if resp["xml"]["values"]
        if values.class == Hash
          values = [values]
        end

        if values
          set_str = ""
          values.each do |entry|
            if entry["val"]
              set_str = set_str +  "#{entry["name"].to_s}='#{Base64.decode64(entry["val"]).to_s.gsub("'","’")  }',"
            else
              set_str = set_str +  "#{entry["name"].to_s}='',"
            end
          end
          if values.size > 0
            set_str = set_str.slice(0,set_str.size - 1)
          end
        end

        conditions = resp["xml"]["conditions"]["condition"] if resp["xml"]["conditions"]
        if conditions.class == Hash
          conditions = [conditions]
        end

        if conditions
          condition_array = (Base64.decode64(conditions[0]).to_s + ",").split("?")
          condition_str = condition_array[0]
          i=1
          while i<=condition_array.size - 1
           condition_str = condition_str + "'#{Base64.decode64(conditions[i]).gsub("'","’")}'" + condition_array[i]
           i = i + 1
          end
         condition_str = condition_str.slice(0,condition_str.size - 1)
        end

        sql_str="update " + from +" set  #{set_str} where #{condition_str}"
        ActiveRecord::Base.connection.execute(sql_str)
        r = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>"
        r = r + "<xml>"
        r = r + "<sql>#{Base64.encode64(sql_str)}</sql>"
        r = r + "<status>1</status>"
        r = r + "<error></error>"
        r = r + "</xml>"
      rescue Exception => e
        r = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>"
        r = r + "<xml>"
        if sql_str.blank?
           r = r + "<sql></sql>"
        else
          r = r + "<sql>#{Base64.encode64(sql_str)}</sql>"
        end
        r = r + "<status>0</status>"
        error = "#{e.message.to_s}\n#{e.backtrace.join("\n")}"
        r = r + "<error>#{Base64.encode64(error)}</error>" #e.message.to_s
        r = r + "</xml>"
      end
    end
    render :text => r
  end

  def find_all_first
    resp = Crack::XML.parse(params[:xml])
    stamp = resp["xml"]["stamp"]
    signmsg = resp["xml"]["signmsg"]
    check = Jrdb.stamp_check(stamp,signmsg)
    unless check == 1
      r = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>"
      r = r + "<xml>"
      r = r + "<sql></sql>"
      r = r + "<status>0</status>"
      if check == -1
        r = r + "<error>#{Base64.encode64("时间戳超时")}</error>"
      else
        r = r + "<error>#{Base64.encode64("时间戳校验错误")}</error>"
      end
      r = r + "</xml>"
    else
      begin
        from = resp["xml"]["from"]
        select = resp["xml"]["select"]
        joins = resp["xml"]["joins"]
        group = resp["xml"]["group"]
        having = resp["xml"]["having"]
        offset = resp["xml"]["offset"]
        limit = resp["xml"]["limit"]
        order = resp["xml"]["order"]
        conditions = resp["xml"]["conditions"]["condition"] if resp["xml"]["conditions"]
        having = resp["xml"]["having"]["condition"] if resp["xml"]["having"]

        unless from.blank?
          from = Base64.decode64(from).to_s
        end

        unless group.blank?
          group = Base64.decode64(group).to_s
        end

        unless order.blank?
          order = Base64.decode64(order).to_s
        end

        unless joins.blank?
          joins = Base64.decode64(joins).to_s
        end

        if select.blank?
          select = "*"
        else
          select = Base64.decode64(select)
        end

        if conditions.class == String
          conditions = [conditions]
        end

        if having && having.class == String
          having = [having]
        end

        if  conditions
          condition_array = (Base64.decode64(conditions[0]).to_s + ",").split("?") if conditions[0]
          condition_str = condition_array[0]
          i=1
          while i<=condition_array.size - 1
            condition_str = condition_str + "'#{Base64.decode64(conditions[i]).gsub("'","’") }'" + condition_array[i] if conditions[i]
            i = i + 1
          end
          condition_str = condition_str.slice(0,condition_str.size - 1)
        end

        if  having
          having_array = (Base64.decode64(having[0]).to_s + ",").split("?") if having[0]
          having_str = having_array[0]

          i=1
          while i<=having_array.size - 1
            having_str = having_str + "'#{Base64.decode64(having[i]).gsub("'","’") }'" + having_array[i] if having[i]
            i = i + 1
          end
          having_str = having_str.slice(0,having_str.size - 1)
        end

        sql_str = "select  " + select + " from " + from
        unless joins.blank?
          sql_str = sql_str + " " + joins
        end
        unless condition_str.blank?
          sql_str = sql_str + " where " + condition_str
        end
        unless group.blank?
          sql_str = sql_str + " group by " + group
        end
        unless having_str.blank?
          sql_str = sql_str + " having " + having_str
        end
        unless order.blank?
          sql_str = sql_str + " order by  " + order
        end
        unless limit.blank?
          sql_str = sql_str + " limit  " + limit.gsub("'","’")
          unless offset.blank?
            sql_str = sql_str + " offset  " + offset.gsub("'","’")
          end
        end

        data = Jrdb.find_by_sql(sql_str)

  #      select_array = select.split(",")
  #      select_array.each
  #      i=0
  #      while i < select_array.size
  #        a = select_array[i].split("as")
  #        select_array[i] = a[1] if a.size > 1
  #        select_array[i] = select_array[i].rstrip.lstrip
  #        i = i + 1
  #      end

        r = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>"
        r = r + "<xml>"
        r = r + "<sql>#{Base64.encode64(sql_str)}</sql>"
        r = r + "<status>1</status>"
        r = r + "<error></error>"
        r = r + "<dataset>"
        r = r + "<size>#{data.size}</size>"
        r = r + "<rows>"
        data.each{|row|
          r = r + "<row>"
  #        select_array.each{|f|
  #         r = r + "<value>"
  #         r = r + "<name>#{f}</name>"
  #         r = r + "<val>#{Base64.encode64(row[f].to_s)}</val>"
  #         r = r + "</value>"
  #        }
          row.attribute_names.each{|f|
            r = r + "<value>"
            r = r + "<name>#{f}</name>"
            r = r + "<val>#{Base64.encode64(row[f].to_s)}</val>"
            r = r + "</value>"
          }
          r = r + "</row>"
        }

        r = r + "</rows>"
        r = r + "</dataset>"
        r = r + "</xml>"
      rescue Exception => e
        r = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>"
        r = r + "<xml>"
        if sql_str.blank?
           r = r + "<sql></sql>"
        else
          r = r + "<sql>#{Base64.encode64(sql_str)}</sql>"
        end
        r = r + "<status>0</status>"
        error = "#{e.message.to_s}\n#{e.backtrace.join("\n")}"
        r = r + "<error>#{Base64.encode64(error)}</error>" #e.message.to_s
        r = r + "</xml>"
      end
    end
    render :text => r
  end

  def paginate_jr
    resp = Crack::XML.parse(params[:xml])
    stamp = resp["xml"]["stamp"]
    signmsg = resp["xml"]["signmsg"]
    check = Jrdb.stamp_check(stamp,signmsg)
    unless check == 1
      r = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>"
      r = r + "<xml>"
      r = r + "<sql1></sql1>"
      r = r + "<sql2></sql2>"
      r = r + "<status>0</status>"
      if check == -1
        r = r + "<error>#{Base64.encode64("时间戳超时")}</error>"
      else
        r = r + "<error>#{Base64.encode64("时间戳校验错误")}</error>"
      end
      r = r + "</xml>"
    else
      begin
        from = resp["xml"]["from"]
        select = resp["xml"]["select"]
        joins = resp["xml"]["joins"]
        group = resp["xml"]["group"]
        having = resp["xml"]["having"]
        page = resp["xml"]["page"]
        perpage = resp["xml"]["perpage"]
        order = resp["xml"]["order"]
        params = resp["xml"]["params"]["param"] if resp["xml"]["params"]
        conditions = resp["xml"]["conditions"]["condition"] if resp["xml"]["conditions"]
        having = resp["xml"]["having"]["condition"] if resp["xml"]["having"]

        unless from.blank?
          from = Base64.decode64(from).to_s
        end

        unless group.blank?
          group = Base64.decode64(group).to_s
        end

        unless order.blank?
          order = Base64.decode64(order).to_s
        end

        unless joins.blank?
          joins = Base64.decode64(joins).to_s
        end

        if select.blank?
          select = "*"
        else
          select = Base64.decode64(select)
        end

        if conditions && conditions.class == String
          conditions = [conditions]
        end

        if having && having.class == String
          having = [having]
        end

        if params && params.class == Hash
          params = [params]
        end

        if perpage
          limit = perpage.to_i
        else
          limit = 10
          perpage = 10
        end
        if page
          page = page.to_i
        else
          page = 1
        end

        offset = limit * ( page - 1)

        if  conditions
          condition_array = (Base64.decode64(conditions[0]).to_s + ",").split("?")
          condition_str = condition_array[0]

          i=1
          while i<=condition_array.size - 1
            condition_str = condition_str + "'#{Base64.decode64(conditions[i]).gsub("'","’") }'" + condition_array[i]
            i = i + 1
          end
          condition_str = condition_str.slice(0,condition_str.size - 1)
        end

        if  having
          having_array = (having[0].to_s + ",").split("?")
          having_str = having_array[0]

          i=1
          while i<=having_array.size - 1
            having_str = having_str + "'#{Base64.decode64(having[i]).gsub("'","’") }'" + having_array[i]
            i = i + 1
          end
          having_str = having_str.slice(0,having_str.size - 1)
        end


        sql_str = "select " + select + " from " + from
        sql_count = "select count(1) as ccc  from " + from
        unless joins.blank?
          sql_str = sql_str + " " + joins
          sql_count = sql_count + " " + joins
        end
        unless condition_str.blank?
          sql_str = sql_str + " where " + condition_str
          sql_count = sql_count + " where " + condition_str
        end
        unless group.blank?
          sql_str = sql_str + " group by " + group
          sql_count = sql_count + " group by " + group
        end
        unless having_str.blank?
          sql_str = sql_str + " having " + having_str
          sql_count = sql_count + " having " + having_str
        end
        unless order.blank?
          sql_str = sql_str + " order by  " + order
        end
        unless limit.blank?
          sql_str = sql_str + " limit  " + limit.to_s.gsub("'","’")
          unless offset.blank?
            sql_str = sql_str + " offset  " + offset.to_s.gsub("'","’")
          end
        end

        data_count = Jrdb.find_by_sql(sql_count)
        d_count = 0
        data_count.each{|dt|
          d_count = dt.ccc
        }
        d_count = d_count.to_i
        data = Jrdb.find_by_sql(sql_str)

  #      select_array = select.split(",")
  #      select_array.each
  #      i=0
  #      while i < select_array.size
  #        a = select_array[i].split("as")
  #        select_array[i] = a[1] if a.size > 1
  #        select_array[i] = select_array[i].rstrip.lstrip
  #        i = i + 1
  #      end

        if d_count % limit == 0
          pages = d_count / limit
        else
          pages = (d_count / limit).to_i + 1
        end
        r = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>"
        r = r + "<xml>"
        r = r + "<sql1>#{Base64.encode64(sql_str)}</sql1>"
        r = r + "<sql2>#{Base64.encode64(sql_count)}</sql2>"
        r = r + "<status>1</status>"
        r = r + "<error></error>"

        r = r + "<dataset>"
        r = r + "<size>#{data.size}</size>"
        r = r + "<count>#{d_count}</count>"
        r = r + "<perpage>#{perpage}</perpage>"
        r = r + "<page>#{page}</page>"
        r = r + "<pages>#{pages}</pages>"
        r = r + "<rows>"
        data.each{|row|
          r = r + "<row>"
  #        select_array.each{|f|
  #         r = r + "<value>"
  #         r = r + "<name>#{f}</name>"
  #         r = r + "<val>#{Base64.encode64(row[f].to_s)}</val>"
  #         r = r + "</value>"
  #        }
          row.attribute_names.each{|f|
             r = r + "<value>"
             r = r + "<name>#{f}</name>"
             r = r + "<val>#{Base64.encode64(row[f].to_s)}</val>"
             r = r + "</value>"
          }
          r = r + "</row>"
        }
        r = r + "</rows>"
        r = r + "</dataset>\n"

        if params.class == Hash
          params = [params]
        end

        if params
          r = r + "<params>"
          params.each do |param|
            r = r + "<param>"
             r = r + "<name>#{param["name"]}</name>"
             unless param["val"].blank?
              r = r + "<val>#{param["val"]}</val>"
             else
              r = r + "<val></val>"
             end
            r = r + "</param>\n"
          end
          r = r + "</params>"
        end

        r = r + "</xml>"
      rescue Exception => e
        r = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>"
        r = r + "<xml>"
        if sql_str.blank?
          r = r + "<sql1></sql1>"
        else
          r = r + "<sql1>#{Base64.encode64(sql_str)}</sql1>"
        end
        if sql_count.blank?
          r = r + "<sql2></sql2>"
        else
          r = r + "<sql2>#{Base64.encode64(sql_count)}</sql2>"
        end
        r = r + "<status>0</status>"
        error = "#{e.message.to_s}\n#{e.backtrace.join("\n")}"
        r = r + "<error>#{Base64.encode64(error)}</error>" #e.message.to_s
        r = r + "</xml>"
      end
    end
    render :text => r
  end

end
