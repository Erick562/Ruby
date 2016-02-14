module Hoge
  def foo
    p 'Hoge'
  end
end

class Fuga
  def foo
    p 'Fuga'
  end
end

class Hage < Fuga
  include Hoge
  def foo
    p 'Hage'
    super
  end
end

p Hage.ancestors
#=> [Hage, Hoge, Fuga, Object, Kernel, BasicObject]
