class FakePerson

  def likes(count=3)
    @likes ||= begin
      if count == 1
        [favorite_activity]
      elsif count == 2
        [favorite_activity, favorite_food]
      else
        [favorite_activity, favorite_food] + activities_and_foods(count - 2, @dislikes)
      end
    end
  end

  def dislikes(count=3)
    @dislikes ||= activities_and_foods(count, @likes)
  end

  private

  def activities_and_foods(count, exclusion_list=nil)
    exclusion_list ||= []

    num_activities_to_get = (1..count).to_a.sample
    num_foods_to_get = (count - num_activities_to_get)

    (self.class.activities - exclusion_list).sample(num_activities_to_get) + (self.class.foods - exclusion_list).sample(num_foods_to_get)
  end

end