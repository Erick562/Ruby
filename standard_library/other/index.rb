def index(idx, arr)
  # 終了条件
  return p arr[0] if idx == 0

  # 頭１つ落とす
  index idx - 1, arr[1..-1]
end

index 3, [1, 2, 3, 4, 5]
