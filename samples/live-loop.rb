# Live loops worden tegelijk afgespeeld door de computer.

# Je kunt aanpassingen maken terwijl de muziek speelt, druk op "Run" om de
# nieuwe aanpassingen in te laden.

use_bpm 60

live_loop :kick do
  sample :bd_haus, rate: 1
  sleep 0.5
end

live_loop :snare do
  sleep 0.5
  sample :sn_dolf
  sleep 0.5
end

live_loop :hihat do
  sample :drum_cymbal_closed
  sleep 0.25
end
