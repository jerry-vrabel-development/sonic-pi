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

# Extended Build-Up (32 bars)
# Introduce the snare
8.times do
  sample :elec_lo_snare, amp: 1.5
  sleep 1
end

# Increase the snare speed
8.times do
  sample :elec_hi_snare, amp: 1.5
  sleep 0.75
end

# Further increase
8.times do
  sample :elec_mid_snare, amp: 1.5
  sleep 0.5
end

# Atmosphere and tension for the last part of the build
4.times do
  sample :perc_snap2, rate: 1.25, amp: 0.6
  sleep 2
end

# Drop (32 bars)
live_loop :bass_drop, sync: :beat do
  use_synth :subpulse
  play_pattern_timed [:e2, :e1, :e2, :g2], [0.5, 0.5, 0.5, 0.5], amp: 1.5, cutoff: 100
end

8.times do
  sample :loop_tabla, rate: 1.25, amp: 0.6
  sleep 2
end
