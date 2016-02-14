a = [1,2,3,4,5]

#ブロックの戻り値がtrue/falseで分ける
p a.partition {|v| v.odd? }
