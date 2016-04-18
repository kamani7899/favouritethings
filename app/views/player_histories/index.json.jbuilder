json.array!(@player_histories) do |player_history|
  json.extract! player_history, :id, :club, :period, :performance, :player_id
  json.url player_history_url(player_history, format: :json)
end
