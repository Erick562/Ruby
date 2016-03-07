class A
  def a
    p aa # = self.aa
  end

  def aa
    "aa"
  end
end

A.new.a

class Hoge
  attr_accessor :a, :b
  def initialize
    @a = 1
    @b = 1
  end

  def sum 
    @a + @b
  end
end

class Fuga < Hoge
  attr_accessor :a

  def initialize
    @a = 5
  end
end

# p Fuga.new.sum
# self = Fugaのインスタンス
# @a = self.a = Fuga.new.a
# @b = self.b = Fuga.new.b
