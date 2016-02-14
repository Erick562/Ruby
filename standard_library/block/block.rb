def just_yield
  yield
end

top = 1
just_yield do
  top += 1
end
