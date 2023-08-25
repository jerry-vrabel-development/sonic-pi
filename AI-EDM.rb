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
  sleep 4
end

8.times do
  sample :loop_tabla, rate: 1.25, amp: 0.6
  sleep 2
end

# Melodic Element (16 bars)
live_loop :melody, sync: :beat do
  use_synth :prophet
  play_pattern_timed [:e3, :g3, :b3, :d4, :c4, :b3, :g3, :e3], [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5], amp: 0.6, cutoff: 100
  sleep 4
end

# Secondary Build-up (16 bars)
4.times do
  sample :elec_lo_snare, amp: 1.5
  sleep 1
end

4.times do
  sample :elec_hi_snare, amp: 1.5
  sleep 0.75
end

# Secondary Drop (16 bars) with slight variation
live_loop :second_bass_drop, sync: :beat do
  use_synth :subpulse
  play_pattern_timed [:e2, :d2, :e2, :f2], [0.5, 0.5, 0.5, 0.5], amp: 1.5, cutoff: 100
  sleep 4
end

# Breakdown (16 bars) - Melodic and Atmospheric
live_loop :breakdown, sync: :beat do
  use_synth :piano
  play_pattern_timed [:e3, :g3, :b3, :d4], [1, 1, 1, 1], amp: 0.5
  sleep 4
end

# Outro (16 bars) - Wind down the track
4.times do
  sample :loop_tabla, rate: 0.8, amp: 0.3
  sleep 2
end

4.times do
  sample :loop_industrial, rate: 0.75, amp: 0.3
  sleep 2
end
