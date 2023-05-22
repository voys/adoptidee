# Alles met een hekje (#) ervoor negeert Sonic Pi.

2.times do
  play :c
  sleep 0.5
  2.times do
    play :d
    sleep 0.5
    play :e
    sleep 0.5
    play :c
    sleep 0.5
  end
end
