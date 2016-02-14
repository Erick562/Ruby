require 'benchmark'

array = 1000.times.map{ rand }
y = 1
z = 2

Benchmark.bm 20 do |r|

  r.report "if" do
    10_000_000.times do |x|
      if x.even?
        y
      else
        z
      end
    end
  end

  r.report "after if" do
    10_000_000.times do |x|
      y if x.even?
      z
    end
  end

  r.report "unless" do
    10_000_000.times do |x|
      unless !x.even?
        z
      else
        y
      end
    end
  end

  r.report "after unless" do
    10_000_000.times do |x|
      z unless !x.even?
      y
    end
  end

  r.report "3 section operator" do
    10_000_000.times do |x|
      !x.even? ? y : z
    end
  end

  r.report "when" do
    10_000_000.times do |x|
      case x.even?
      when true
        y
      else
        z
      end
    end
  end

end
