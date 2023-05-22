use_synth :dsaw

loop do
  play 50, amp: 0.3, release: 2
  play 53, amp: 0.3, release: 2 if one_in(2)
  play 57, amp: 0.3, release: 2 if one_in(3)
  play 60, amp: 0.3, release: 2 if one_in(4)
  sleep 1.5
end
