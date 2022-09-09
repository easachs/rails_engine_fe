class ItemsService
  def self.index
    response = conn.get('/api/v1/items')
    parse_json(response)
  end

  def self.show(id)
    response = conn.get("/api/v1/items/#{id}")
    parse_json(response)
  end

  private

  def self.conn
    Faraday.new(url: 'http://localhost:3000')
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end