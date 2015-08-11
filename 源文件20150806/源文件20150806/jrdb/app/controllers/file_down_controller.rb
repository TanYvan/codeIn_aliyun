class FileDownController < ApplicationController

  def docformat_swf_down
    id = params[:id]
    stamp = params[:stamp]
    sign_msg = params[:sign_msg]
    check = Jrdb.stamp_check(stamp,sign_msg)
    #check = 1
    r=""
    unless check == 1
      if check == -1
        r = r + "下载失败,时间戳超时"
      else
        r = r + "下载失败,时间戳校验错误"
      end
      render :text => r
    else
      @doc = TbDoc.find(id)
      @yea = @doc.recevice_code.slice(0,4)
      send_file("#{SysArg.find_by_code("8010").val}/public/fdocs/#{@yea}/#{@doc.recevice_code}/#{@doc.f_file_name.split(".")[0]}.swf",:filename=>"#{@doc.f_file_name.split(".")[0]}.swf")
    end
    
  end

  def casedoc_down
    id = params[:id]
    stamp = params[:stamp]
    sign_msg = params[:sign_msg]
    check = Jrdb.stamp_check(stamp,sign_msg)
    #check = 1
    r=""
    unless check == 1
      if check == -1
        r = r + "下载失败,时间戳超时"
      else
        r = r + "下载失败,时间戳校验错误"
      end
      render :text => r
    else
      @doc=CaseBook.find(id)
      @yea=@doc.recevice_code.slice(0,4)
      send_file("#{SysArg.find_by_code("8010").val}/casedocs/#{@yea}/#{@doc.recevice_code}/#{@doc.book_name}")
    end

  end



  
  
end
