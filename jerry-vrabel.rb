# Song Title

# Coded by Jerry Vrabel


live_loop :bash do
  play :C1, release: 0.5
  sleep 1
end

live_loop :boo do
  sync :bash
  sample :bd_haus
  sleep 0.5
end
