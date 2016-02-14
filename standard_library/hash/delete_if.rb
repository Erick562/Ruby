# delete_ifはない

h = {a: 10, b: 20, c: 30}

# h.detete_ifとreject!は一緒。
# h.delete_if {|k,v| v < 20}
# h.keep_if {|k,v| v < 20}
# h.reject! {|k, v| v < 20}
# h.select! {|k, v| v < 20}

# rejectは非破壊
# h.reject {|k, v| v < 20}
# h.select {|k, v| v < 20}
p h
