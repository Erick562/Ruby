[1,2,3].inject 0 do |i, e| i + e * 2 end
#=> 12
[1,2,3].inject 0 { |i, e| i + e * 2 }
#=> error
