class FakePerson

  #
  # Return a title
  #
  def title
    @title ||= begin
      base = (gender == :male ? self.class.male_titles : self.class.female_titles)
      base = base | self.class.unisex_titles if rand(5) == 0
      base.shuffle.first
    end
  end
  
  class << self
    
    #
    # Return all unisex titles
    #
    def unisex_titles
      @unisex_titles ||= ['Dr', 'Prof', 'Rev']
    end
    
    #
    # Return all male titles
    #
    def male_titles
      @male_titles ||= ['Mr']
    end
    
    #
    # Return all female titles
    #
    def female_titles
      @female_titles ||= ['Mrs', 'Miss', 'Ms']
    end
    
  end
  
end