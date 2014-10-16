require 'date'

class FakePerson
  
  #
  # Return the person's date of birth
  #
  def date_of_birth(min_age = 18, max_age = 80)
    @date_of_birth ||= Date.new(Date.today.year - max_age + rand(max_age - min_age), rand(12) + 1, rand(28) + 1)
  end
  
  #
  # Return this person's age
  #
  def age
    @age ||= begin
      years  = Date.today.year - self.date_of_birth.year
      years -= 1 if Date.today.yday < self.date_of_birth.yday
      years
    end
  end
  
end