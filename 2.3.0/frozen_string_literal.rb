# frozen_string_literal: true
# coding: utf-8

require 'fiddle'
h = 'hoge'
s = 'hoge'
# h << 'fuga'
# h.succ!
# h.sub!(/ge/, 'unko')
# h.swapcase!
p Fiddle::Pointer[h].to_i
p Fiddle::Pointer[s].to_i
h = nil
s = nil
h = 'ほげ'
s = 'ほげ'
p Fiddle::Pointer[h].to_i
p Fiddle::Pointer[s].to_i
# puts h
