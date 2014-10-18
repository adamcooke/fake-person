class FakePerson
  
  AVATAR_QUANTITIES = {:male => 76, :female => 65}
  AVATAR_SIZE_GROUPS = [128, 256, 512]
  
  def avatar_identifier
    @avatar_identifier ||= rand(AVATAR_QUANTITIES[self.gender])
  end
  
  def avatar_url(options = {})
    options[:size] ||= 128
    closest_size = AVATAR_SIZE_GROUPS.select {|s| s >= options[:size]}.first
    "#{options[:secure] == false ? 'http' : 'https'}://s3-eu-west-1.amazonaws.com/fakepeople/#{gender}/#{closest_size}/#{avatar_identifier}.png"
  end
  
end
