a1 = %w(a b c)
a2 = %w(1 2 3)

a3 = a1.zip a2 do |i, j|
  p i
  p j 
end
a4 = [a1, a2].transpose do |x, y|
  p x
  p y 
end
# p a3
# p a4
