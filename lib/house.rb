class House
  attr_reader :rooms, :price

  def initialize(price, address)
    @price = price.delete("$").to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if @price.to_i > 500000
      true
    else
      false
    end
  end

  def rooms_from_category(category)
    rooms_in_category = []
    @rooms.each do |room|
      if category == room.category
        rooms_in_category << room
      end
    end
      rooms_in_category
  end

  def area

    @rooms.sum do |room|
      room.length * room.width
    end
  end

  def details
    {"price"=>@price, "address"=>@address}
  end
  
end
