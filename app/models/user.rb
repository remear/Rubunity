class User < ActiveRecord::Base
  acts_as_authentic
  
  def full_name
    [self.first_name, self.last_name].join(" ")
  end
  
  def profile_image(imgsize = nil)
    size = 20
    case imgsize 
      when 'large' then size = 100
      when 'medium' then size = 60
      when 'small' then size = 40
    end
    "http://www.gravatar.com/avatar/#{hash = Digest::MD5.hexdigest(email)}?size=#{size}"
  end
  
end
