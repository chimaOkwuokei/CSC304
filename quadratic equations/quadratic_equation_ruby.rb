# puts "i just coded in ruby!!!!!!!!!"

a = 1
b = 3
c = 4


d = ((b**2) - 4*a*c)
puts d

if d > 0
  x1 = (-b + (d**0.5))/(2*a)
  x2 = (-b - (d**0.5))/(2*a)
  puts "The discriminant is (positive): #{d}"
  puts "The values of x1 and x2 are: #{x1} and #{x2} "

elsif d < 0
  x1 = (-b + (d**0.5))/(2*a)
  x2 = (-b - (d**0.5))/(2*a)
  puts "The discriminant is (negative): #{d}"
  puts "The values of x1 and x2 are: #{x1} and #{x2} "

elsif d == 0
  x1 = (-b + (d**0.5))/(2*a)
  x2 = (-b - (d**0.5))/(2*a)
  puts "The discriminant is : #{d}"
  puts "The values of x1 and x2 are: #{x1} and #{x2} "

end
