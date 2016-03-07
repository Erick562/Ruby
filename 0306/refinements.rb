class Hoge
  def hoge
    "hoge"
  end
end

# 普通にオープンクラスしたらこう。
class Hoge
  def hoge
    "hogehoge"
  end
end


# refinementsを使う。
module OpenHoge
  refine Hoge do
    def hoge 
      "hogehoge"
    end
  end
end

p Hoge.new.hoge

# using OpenHoge

# p Hoge.new.hoge
