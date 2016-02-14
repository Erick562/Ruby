# -*- coding: utf-8 -*-
file_name = ARGV[0]
begin
  File.open(file_name) do |file|
    file.each_line do |l|
      l.gsub!(/　/, '  ')
    end
  end
end
