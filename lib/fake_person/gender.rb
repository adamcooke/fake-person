class FakePerson
  
  #
  # Return the gender for this person
  #
  def gender
    @gender ||= rand(2) == 0 ? :male : :female
  end
  
end