class Fixnum
  def method_missing(name)
    nil
  end
end

p 5.hoge
