Ro_num = {
  M:  1000,
  CM: 900,
  D:  500,
  CD: 400,
  C:  100,
  XC: 90,
  L:  50,
  XL: 40, 
  X:  10,
  IX: 9,
  V:  5,
  IV: 4,
  I:  1
  }

def convert_to_roman(num)
  working_num = num
  result = ''
  Ro_num.each_pair do |rom, val|
    (working_num / val).times {result << rom.to_s}
    working_num %= val
  end
  result
end

puts 'This app accepts a decimal-based int and returns the Roman Numeric equivlent'
puts 'Enter a decimal-based integer'

dec_num = gets.chomp.to_i

puts "In roman numerals you number is: #{convert_to_roman(dec_num)}"