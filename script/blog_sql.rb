require 'mysql'
my = Mysql.new('localhost.localdomain', 'root', '', 'training')
strs = ('a'..'z').to_a
two = 1
100.times do
  one = rand(10)
  two = two.succ
  three = strs.sample(rand(10) + 1) * ""
  que = my.query("insert into blog(one, two, three) values('#{one}','#{two}','#{three}')")
end
