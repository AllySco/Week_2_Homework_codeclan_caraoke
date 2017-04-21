class Guest
attr_accessor :name, :party_size, :cash
  def initialize(name, party_size, cash)
    @name = name
    @party_size = party_size
    @cash = cash
  end

end