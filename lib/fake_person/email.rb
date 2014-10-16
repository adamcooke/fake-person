class FakePerson
  
  #
  # Return an email address for this person. All messages sent to example.com
  # will bounce.
  #
  def email_address(domain = 'example.com')
    @email_address ||= "#{username}@#{domain}"
  end
  
  #
  # Return a free email address. This might be a real person!
  #
  def free_email_address
    @free_email_address ||= "#{username}@#{self.class.free_email_domains.shuffle.first}"
  end
  
  class << self
    
    #
    # Return an array of free email hosting domains
    #
    def free_email_domains
      @free_email_domains ||= ["hotmail.com", "gmail.com", "yahoo.com", "gmx.com"]
    end
    
  end
  
end