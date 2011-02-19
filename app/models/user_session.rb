class UserSession < Authlogic::Session::Base
  find_by_login_method :find_by_email
  remember_me_for 1.year
  
  include ActiveModel::Conversion 
  def to_key
    new_record? ? nil : [ self.send(self.class.primary_key) ]
  end

  def persisted?
    false
  end
end