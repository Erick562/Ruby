require 'benchmark'
arr = (0..10_000_000).to_a
Benchmark.bm 20 do |r|
  r.report 'each do' do
    sum = 0
    arr.each do |a|
      sum += a
    end
  end

  r.report 'each curly' do
    sum = 0
    arr.each { |a| sum += a }
  end

  r.report 'each with index' do
    sum = 0
    arr.each_with_index do |a, i|
      sum += a
    end
  end

  r.report 'times' do
    sum = 0
    arr.max.times do |a|
      sum += a
    end
  end
  r.report 'upto' do
    sum = 0
    arr.min.upto(arr.max) do |a|
      sum += a
    end
  end

  r.report 'downto' do
    sum = 0
    arr.max.downto(arr.min) do |a|
      sum += a
    end
  end

  r.report 'while' do
    sum = 0
    a = 0
    while a < 10_000_000 do
      sum += a
      a += 1
    end
  end

  r.report 'until' do
    sum = 0
    a = 0
    until a > 10_000_000 do
      sum += a
      a += 1
    end
  end

  r.report 'for' do
    sum = 0
    for a in arr do
      sum += a
    end
  end

  r.report 'step' do
    sum = 0
    0.step(10_000_000) do |a|
      sum += a
    end
  end

  r.report 'loop' do
    sum = 0
    b = 0
    loop{
      sum += b
      b += 1
      break if b > 10_000_000
    }
  end

  r.report 'inject' do
    arr.inject(&:+)
  end

  r.report 'map' do
    sum = 0
    arr.map { |a| sum += a }
  end

  r.report 'collect' do
    sum = 0
    arr.collect { |a| sum += a }
  end
end
