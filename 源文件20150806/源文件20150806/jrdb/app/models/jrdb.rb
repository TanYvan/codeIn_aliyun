class Jrdb < ActiveRecord::Base

  def self.stamp_check(stamp, sign_msg)
    st = Time.parse(stamp);
    sjc = st - Time.now
    if sjc<-180 || sjc>180
      return -1
    end
    sig = Digest::MD5.hexdigest(stamp + get_key())
    if sig == sign_msg
      return 1
    else
      return 0
    end

  end

  def self.get_key()
      return "yihua123456"
  end
  
end
