#coding:utf-8
ary = [1,5,3,7,10,9,15,2]
i = 0
n = ary.size

puts ary if n <= 1
while (n - 1) > i do
  target_ary = ary[(i + 1)..-1]
  p "#{i}週目"
  p "ary[i] : #{ary[i]}"
  p target_ary
  min_n =  target_ary.min
  p "min_n :#{min_n}"
  if ary[i] > min_n
    p '-----true------'
    min_idx = target_ary.find_index(min_n) + i + 1
    p "min_idx :#{min_idx}"
    ary[i] , ary[min_idx] = ary[min_idx] , ary[i]
  end
  i += 1
  p '================================='
end

p '---------result--------------'
p ary
