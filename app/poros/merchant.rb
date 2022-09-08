class Merchant

  attr_reader :id, :name

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name] if data[:attributes]
  end
end