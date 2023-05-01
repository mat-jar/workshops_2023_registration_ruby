class CountElements

  def perform
    count_elements
  end

  private

  def initialize(array)
    @array = array
  end

  def count_elements
    @array.tally
  end

end
