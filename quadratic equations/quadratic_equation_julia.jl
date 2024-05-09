
# p = 23
# r = 2
# t = 4
# age = 25
# is_sunny = true
# # si = (p*r*t)/100

# # print(si)
# # result = 5 + 3 * 2
# # print(result)

# is_equal = age == 25
# print(is_equal)

#quadratic equation
# print("Enter the value of a: ")
# a = readint(read(String))
#1,4,3 d>0
#1,2,1 d=0
#1,3,4 d<0
a = 1
b = 3
c = 4

d = ((b^2) - 4*a*c)

if d > 0
    x1 = (-b + sqrt(d))/(2*a)
    x2 = (-b - sqrt(d))/(2*a)
    println("The discriminant is (positive): ", d)
    print("The values of x1 and x2 are: ", x1," and ",x2)

elseif d < 0
    x1 = (-b + sqrt(Complex(d)))/(2*a)
    x2 = (-b - sqrt(Complex(d)))/(2*a)
    println("The discriminant is (negative): ", d)
    print("The values of x1 and x2 are: ", x1," and ",x2)
elseif d == 0
    # print("aha")
    x1 = (-b + sqrt(d))/(2*a)
    x2 = (-b - sqrt(d))/(2*a)
    println("The discriminant is: ", d)
    print("The values of x1 and x2 are: ", x1," and ",x2)

end