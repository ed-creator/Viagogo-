
class Ticket

  attr_reader :price, :event_id

  def initialize(price=random_price, event_id)
    @price = price
    @event_id = event_id
  end

  def ticket_price
    return "$#{price}"
  end

  private

  def random_price
    return rand(100)
  end



end
