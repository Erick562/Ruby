require 'benchmark'

array = 1000.times.map{ rand }

Benchmark.bm 10 do |r|
  r.report "test" do
    10000.times do
      sum = array.inject(&:+)
    end
  end
  r.report "test2" do
    10000.times do
      sum = 0
      array.each{|x| sum += x}
    end
  end
end
