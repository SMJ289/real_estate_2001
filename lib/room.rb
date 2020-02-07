class Room
  attr_reader :category, :length, :width



  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width.to_i
    @painted = false
  end

  def area
    @length * @width
  end

  def paint
    @painted = true
  end

  def is_painted?
    @painted
  end


end
