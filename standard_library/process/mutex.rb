q = Queue.new
m = Mutex.new

3.times do |i|
  Thread.new do
    m.synchronize do
      sleep 1
      q.push i
    end
  end

  Thread.new do
    m.synchronize do
      q.push "hoge" 
    end
  end
end

p q.pop
p q.pop
p q.pop
p q.pop
