require 'mysql'
require 'benchmark'

strs = ('a'..'z').to_a
my = Mysql.new('localhost.localdomain', 'root', '', 'training')
my.query("truncate index_test")
my.query("truncate no_index_test")

Benchmark.bm 10 do |r|
  r.report "insert index" do
    10000.times do
      value = strs.sample(10) * ""
      my.query("insert into index_test(item) values('#{value}')")
    end
  end
  my.query("insert into no_index_test(item) select item from index_test")
end
