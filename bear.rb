class Bear

attr_accessor :bear_stomach

  def initialize(bear_name,bear_breed)
    @bear_name = bear_name
    @bear_breed = bear_breed
    @bear_stomach = []
  end

  def bear_stomach_count
    return @bear_stomach.count
  end

  def bear_roar
    if @bear_stomach.length == 1
      return "ROOAAAR"
    end
  end
end
