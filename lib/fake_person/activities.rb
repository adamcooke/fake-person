class FakePerson

  def favorite_activity
    @favorite_activity ||= self.class.activities.sample
  end

  def self.activities
    @activities ||= begin
      path = File.expand_path(File.join('..', '..', '..', 'db', "activities.txt"), __FILE__)
      File.read(path).split("\n").compact.map(&:capitalize)
    end
  end

end