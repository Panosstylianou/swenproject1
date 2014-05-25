class Member < ActiveRecord::Base
  
  def encrypt_password
    self.password = Digest::MD5.hexdigest(password)
  end
  
  
  def self.authenticate(email, password)
    member = find_by_email(email)
    if member && member.password == Digest::MD5.hexdigest(password)
      member
    else
      nil
    end
  end
end
