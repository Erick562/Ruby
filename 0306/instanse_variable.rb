class Hoge
  attr_accessor :a

  def initialize
    @a = 1
  end

  def ais
    @a
  end
end

class Fuga < Hoge
  attr_accessor :a

  def initialize
    @a = 2
  end
end

p Fuga.new.ais
