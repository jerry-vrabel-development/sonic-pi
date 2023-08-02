# A dope song
# Created by jv

use_bpm 60

# Define a counter for the bars
counter = 0

# Loop the kick drum
live_loop :kick do
  if counter < 12 || (counter >= 16 && counter < 28)
    sample :bd_haus
    sleep 1
  elsif counter < 32
    sleep 1
  else
    stop
  end
end

# Loop the hi-hat
live_loop :hi_hat do
  if counter < 12 || (counter >= 16 && counter < 28)
    sample :drum_cymbal_closed
    sleep 0.25
    sample :drum_cymbal_closed
    sleep 0.25
    sample :drum_cymbal_pedal
    sleep 0.25
    sample :drum_cymbal_closed
    sleep 0.25
  elsif counter < 32
    sleep 1
  else
    stop
  end
end

# Loop the bass line
live_loop :bass do
  use_synth :fm
  if counter < 12
    play_pattern_timed [:c2, :e2, :f2, :a2], [0.5, 0.5, 0.5, 0.5], amp: 0.5
  elsif counter >= 16 && counter < 28
    # Varied bass line for the second twelve bars
    play_pattern_timed [:a2, :f2, :c2, :e2], [0.5, 0.5, 0.5, 0.5], amp: 0.5
  elsif counter < 32
    sleep 1
  else
    stop
  end
  counter += 1
end

# The drop with deep bass
live_loop :drop do
  if counter >= 12 && counter < 13
    use_synth :subpulse
    play :c1, release: 4, cutoff: 60
    sleep 4
    stop
  else
    sleep 1
  end
end