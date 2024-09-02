puts "Digite sua palavra"
string = gets.chomp

array = string.chars

i = array.length - 1
j = 0

new_string = "" 
while i >= j
  new_string << array[i]
  i-=1
end

puts new_string