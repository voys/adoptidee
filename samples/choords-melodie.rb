live_loop :first do
  play chord(:a3, :minor).choose, attack: 0, release: 0.3, cutoff: 80
  sleep 0.2
end
