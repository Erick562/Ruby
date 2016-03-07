# 文字列に hoge という文字列を追加するメソッド
# def add_hoge(str)
#   str + " hoge"
# end
#
# p add_hoge("hello world")
#
# class String
#   def add_hoge
#     self + " hoge"
#   end
# end
#
# p "hello world".add_hoge


# レシーバの文字列の第一引数の文字列があったら第二引数も文字と変えた文字列を返したい。

# p "hogefuga".replace("fu")

# class String
#   def replace(bef, aft)
#     pos = self.index bef
#     return if pos.nil?
#     str = self.delete bef
#     str.insert pos, aft 
#   end
# end
#
# p "hogefuga".replace("fu", "ho")

# p "hogefuga".replace("fu")
