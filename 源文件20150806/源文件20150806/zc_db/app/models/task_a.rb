#
# To change this template, choose Tools | Templates
# and open the template in the editor.


class Task_a

  def t_a
    t_b
  end

#  def t_b
#    if @@task_state==0
#
#      @@task_state=1
#
#      @sys_2001 = SysArg.find_by_code('2001') #提醒服务最后运行时间
#      et_before = @sys_2001.val
#      et_now_t = Time.now
#      et_now = et_now_t.to_s(:db)
#      @sys_2001.val = et_now
#      @sys_2001.save
#      t_32(et_before,et_now_t,et_now)
#    end
#  end

  def t_b
    if @@task_state==0

      @@task_state=1

      @sys_2001 = SysArg.find_by_code('2001') #提醒服务最后运行时间
      et_before = @sys_2001.val
      et_now_t = Time.now
      et_now = et_now_t.to_s(:db)
      @sys_2001.val = et_now
      @sys_2001.save
      ##########################################################################################################
      # 911：备份数据库
      begin
        t_911(et_before,et_now_t,et_now)
      rescue
      end
      ##########################################################################################################

      @@task_state=0

    else

    end

  end

  def t_911(et_before,et_now_t,et_now)
    ### 备份数据库
    if et_now.slice(0,10)>et_before.slice(0,10)
      system "/alidata/server/mysql-5.5.37/bin/mysqldump --skip-opt -q --create-options -R -uroot -paliyun_2014_e59 zc_extranet > /usr/local/zc_database_bak/zc_extranet_#{et_now.slice(0,10)}.sql"
      del_e=et_now_t.ago(3600 * 24 * 7).to_date.to_s(:db)
      if del_e.slice(8,2)=='01'
      else
        File.open("/usr/local/zc_database_bak/zc_extranet_#{del_e}.sql","w+"){}
        File.delete("/usr/local/zc_database_bak/zc_extranet_#{del_e}.sql")
      end
    end
  end

end
