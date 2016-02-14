# coding: utf-8

targets = ARGV[0] || './*'
not_available_methods = %W(succ! next! upcase! downcase! capitalize! swapcase! reverse! sub! gsub! chop! chomp! strip! lstrip! rstrip! tr! tr_s! delete! squeeze! slice! encode!)

not_available_methods.each do |m|
  puts "--------------search #{m}------------------"
  result = `grep -rnH #{m} #{targets} | grep -v '%W(succ! next! upcase! downcase! capitalize! swapcase! reverse! sub! gsub! chop! chomp! strip! lstrip! rstrip! tr! tr_s! delete! squeeze! slice! encode!)'`
  results = result.split(/\n/)
  results.each do |r| 
    puts r.sub(/^(.*\.rb)\:([0-9]*)\:\s*/){"\e[33m#{$1}\e[0m  \e[32m#{$2}\e[0m:"}.gsub(/(\.#{m})\.?/){"\e[31m#{$1}\e[0m"}
  end
end
