json.array!(@shares) do |share|
  json.extract! share, :id, :username, :body, :created_at, :updated_at, :location, :car_make, :price, :route, :distance, :date, :luggage, :experience
  json.url share_url(share, format: :json)
end
