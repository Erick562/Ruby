module Hoge
  def hoge
    "hoge"
  end
end

class Fuga
  include Hoge

  def hoge
    "fuga"
  end
end

class Foo
  prepend Hoge

  def hoge
    "foo"
  end
end

p Fuga.ancestors
p Foo.ancestors
# p Fuga.new.hoge
# p Foo.new.hoge
