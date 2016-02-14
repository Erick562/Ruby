catch :hoge do
  loop do
    p "hoge loop"
    loop do
      catch :nest_hoge do
        p "hoge loop in loop"
        # throw :nest_hoge
        throw :hoge
      end
    end
  end
end
