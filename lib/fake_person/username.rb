class FakePerson
  
  #
  # Return a username which this user can be assigned.
  #
  def username
    @username ||= begin
      case rand(7)
      when 0 then "#{first_name.downcase}.#{last_name.downcase}"
      when 1 then "#{first_name.downcase[0,1]}#{last_name.downcase}"
      when 2 then "#{last_name.downcase}-#{first_name.downcase}"
      when 3 then "#{first_name.downcase}#{last_name.downcase}"
      when 4 then "#{first_name.downcase[0,1]}.#{middle_name.downcase[0,1]}.#{last_name.downcase}"
      when 5 then "#{first_name.downcase}#{date_of_birth.year.to_s[2,2]}"
      when 6 then "#{first_name.downcase}#{last_name.downcase}#{date_of_birth.year}"
      end
    end
  end
  
end