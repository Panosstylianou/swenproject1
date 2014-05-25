json.array!(@events) do |event|
  json.extract! event, :id, :name, :date, :location, :description, :tickets
  json.url event_url(event, format: :json)
end
