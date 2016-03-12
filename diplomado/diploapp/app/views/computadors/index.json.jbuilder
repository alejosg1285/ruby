json.array!(@computadors) do |computador|
  json.extract! computador, :id, :procesador, :cant_mem, :cant_disco, :uni_disco, :sisope, :tarj_video, :feac_fab
  json.url computador_url(computador, format: :json)
end
