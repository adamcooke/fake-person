class FakePerson
  
  def favorite_color
    self.class.colors.sample
  end
  
  def self.colors
    @colors ||= begin
      path = File.expand_path(File.join('..', '..', '..', 'db', "colors.txt"), __FILE__)
      File.read(path).split("\n").compact.map(&:capitalize)
    end
  end
  
  
end