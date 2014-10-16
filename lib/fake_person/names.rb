class FakePerson
  
  #
  # Return a full name
  #
  def name(format = :standard)
    case format
    when :standard            then "#{first_name} #{last_name}"
    when :full                then "#{first_name} #{middle_name} #{last_name}"
    when :formal              then "#{title}. #{last_name}"
    when :formal_with_first   then "#{title}. #{first_name} #{last_name}" 
    end
  end
  
  #
  # Return the initials
  #
  def initials
    "#{first_name[0,1]}#{middle_name[0,1]}#{last_name[0,1]}"
  end
  
  #
  # Return the first name
  #
  def first_name
    @first_name ||= self.class.given_names(self.gender).shuffle.first
  end
  
  #
  # Return the middle name
  #
  def middle_name
    @middle_name ||= begin
      while @middle_name.nil? || @middle_name == self.first_name
        @middle_name = self.class.given_names(self.gender).shuffle.first
      end
      @middle_name
    end
  end
  
  #
  # Return the last name
  #
  def last_name
    @last_name ||= begin
      while @last_name.nil? || @last_name == self.first_name || @last_name == self.middle_name
        @last_name = self.class.surnames.shuffle.first
      end
      @last_name
    end
  end
  
  class << self
    
    #
    # Return an array of all possible first names
    #
    def given_names(gender)
      @given_names ||= {}
      @given_names[gender.to_sym] ||= begin
        path = File.expand_path(File.join('..', '..', '..', 'db', "given_names.#{gender}.txt"), __FILE__)
        File.read(path).split("\n").compact.map(&:capitalize)
      end
    end
    
    #
    # Return an array of all possible last names
    #
    def surnames
      @surnames ||= begin
        path = File.expand_path(File.join('..', '..', '..', 'db', "surnames.txt"), __FILE__)
        File.read(path).split("\n").compact.map(&:capitalize)
      end
    end
    
  end
end