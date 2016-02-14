trap :INT do
  puts "INTERRUPTED"
  exit
end

loop do
  sleep 1
end
