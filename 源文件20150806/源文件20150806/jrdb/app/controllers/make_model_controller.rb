class MakeModelController < ApplicationController
  def index

  end
  
  def make_do
    sql_str= "select * from #{params[:name]} where  id=1"
    data = Jrdb.find_by_sql(sql_str)
    r="";
    data.each{|row|
      row.attribute_names.each{|f|
        r = r + "private #{row[f].class} #{f} ; \n"
      }
    }

    data.each{|row|
      row.attribute_names.each{|f|
        r = r + "public #{row[f].class} get#{f.capitalize}( ) { \n"
        r = r + "  return #{f}; \n";
        r = r + "}\n";
        r = r + "public void set#{f.capitalize}(#{row[f].class} #{f}) { \n"
        r = r + "this.#{f} = #{f}; \n";
        r = r + "}\n";
      }
    }
    render :text => r
  end


  def make_do_2
    sql_str= "select * from #{params[:name]} where  id=1"
    data = Jrdb.find_by_sql(sql_str)
    r="";
    data.each{|row|
      row.attribute_names.each{|f|
        if row[f].class == Fixnum
          r = r + "private int #{f} ; \n"
        else
          r = r + "private #{row[f].class} #{f} ; \n"
        end
      }
    }

    data.each{|row|
      row.attribute_names.each{|f|
        if f=="id"
          r = r + "@Id\n";
        end
        if row[f].class  == Fixnum
          c_class = "int"
        else
          c_class = "#{row[f].class}"
        end
        r = r + "@Column(name = \"#{f}\")\n";
        r = r + "public #{c_class} get#{f.capitalize}( ) { \n"
        r = r + "  return #{f}; \n";
        r = r + "}\n";
        r = r + "public void set#{f.capitalize}(#{c_class} #{f}) { \n"
        r = r + "this.#{f} = #{f}; \n";
        r = r + "}\n";
        if row[f].class  == Fixnum
          r = r + "public void set#{f.capitalize}(Integer #{f}) { \n"
          r = r + "this.#{f} = #{f}.intValue(); \n";
          r = r + "}\n";
        end
      }
    }
    render :text => r
  end

end
