require 'mysql'
require 'benchmark'

my = Mysql.new('localhost.localdomain', 'root', '', 'training')
Benchmark.bm 20 do |r|
  r.report "select index" do
    10000.times do
      my.query("select * from index_test where item LIKE 'ab%'")
    end
  end
  r.report "select no_index" do
    10000.times do
      my.query("select * from no_index_test where item LIKE 'ab%'")
    end
  end
end
