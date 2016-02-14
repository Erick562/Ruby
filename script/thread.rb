t = Thread.new do
  puts 't1start'
  (1..10).each do |i|
    puts i
    sleep 1
  end
  puts 't1end'
end
t2 = Thread.new do
  puts 't2start'
  (11..20).each do |i|
    puts i
    sleep 1
  end
  puts 't2end'
end
t3 = Thread.new do
  puts 't3start'
  Thread.stop
  puts 't3end'
end

t.join
t2.join
t3.run

puts 'complete'
