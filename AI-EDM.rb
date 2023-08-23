# Set BPM
use_bpm 128

# Base drum beat
live_loop :beat do
  sample :bd_808, amp: 2
  sleep 0.5
  sample :drum_cymbal_closed
  sleep 0.5
end

# Intro (32 bars) with an industrial vibe
8.times do
  sample :loop_industrial, rate: 1, amp: 0.5
  sleep 2
end

# Build-Up (16 bars)
4.times do
  sample :drum_snare_soft, amp: 1.5
  sleep 1
end

4.times do
  sample :drum_snare_soft, amp: 1.5
  sleep 0.75
end

4.times do
  sample :drum_snare_soft, amp: 1.5
  sleep 0.5
end

# Melodic Build & Effects
2.times do
  sample :loop_industrial, rate: 1.25, amp: 0.5
  sample :ambi_glass_rub, rate: -0.5, amp: 0.6  # This can create tension
  sleep 2
end
