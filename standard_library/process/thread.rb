th = Thread.start do
  5.times do
    p 'hello'
    sleep 1
  end
end

th.join
