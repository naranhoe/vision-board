json.array!(@planningboards) do |planningboard|
  json.extract! planningboard, :id, :goal1, :goal2, :goal3, :goal4, :goal5, :url1, :url2, :url3, :url4, :url5, :description, :name
  json.url planningboard_url(planningboard, format: :json)
end
