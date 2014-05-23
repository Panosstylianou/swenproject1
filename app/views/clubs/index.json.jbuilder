json.array!(@clubs) do |club|
  json.extract! club, :id, :name, :studentid, :category, :description, :phone, :email, :address, :fb_id
  json.url club_url(club, format: :json)
end
