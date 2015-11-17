json.array!(@stekkers) do |stekker|
  json.extract! stekker, :id, :deadline, :memo
  json.url stekker_url(stekker, format: :json)
end
