json.array!(@players) do |player|
  json.extract! player, :id, :jersey, :name, :manager, :status, :contract, :club
  json.url player_url(player, format: :json)
end
