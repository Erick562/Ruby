hash = {a: 1, b: 2, c: 3}
hash.each do |k, v|
  puts "key: #{k}"
  puts "value: #{v}"
  puts ""
end

hash.each_key do |k|
  puts "key: #{k}"
  puts ""
end

hash.each_value do |v|
  puts "value: #{v}"
  puts ""
end
