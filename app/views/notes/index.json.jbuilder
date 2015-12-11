json.array!(@notes) do |note|
  json.extract! note, :id, :name, :contents
  json.url note_url(note, format: :json)
end
