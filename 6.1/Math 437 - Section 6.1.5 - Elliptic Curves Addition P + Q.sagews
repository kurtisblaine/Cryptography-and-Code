︠3349d7b5-257b-4b85-af45-3c9c3872d5c3s︠
'Desmos Link for graphing ECs: https://www.desmos.com/calculator/yollrwlite'
︡c0f9740a-00db-4f47-b6ae-b7d6754bbb79︡{"stdout":"'Desmos Link for graphing ECs: https://www.desmos.com/calculator/yollrwlite'"}︡{"stdout":"\n"}︡{"done":true}
︠95547455-96ad-44a8-b4f8-05508baeecbbs︠
A = -6
B = 20
C = plot(EllipticCurve([0,0,0,A,B]), gridlines='true',xmin=-10, xmax=20, ymin=-20, ymax=20, legend_label='$y^2=x^3+Ax + B$')
show(C)
︡89484183-d447-41f5-999a-52d4bd930fa0︡{"file":{"filename":"/home/user/.sage/temp/project-ddfc60ef-f653-43be-a974-24116e98a3a6/431/tmp_Wz2Y7T.svg","show":true,"text":null,"uuid":"af64ad49-dbdd-47f8-9a58-7eb7910bb796"},"once":false}︡{"done":true}
︠99de10c8-2daa-4ce0-901d-865466d743fas︠
#############################################################################################
# Function takes in function f and divisor d and returns q and r where
# f(x) = q(x)*d(x) + r(x)
#############################################################################################

def division(dividend, divisor) :
    q,r = dividend.maxima_methods().divide(divisor)
    print 'quotient: ', q
    print 'remainder: ', r
︡403a6487-78d3-482b-98bf-4ca6f8a8555a︡{"done":true}
︠e4681b15-b8a8-4d88-91c3-9584ffb3b586s︠
#############################################################################################
#Example 6.1.5
#Add P = (-1,-5) to Q = (2,4)
#############################################################################################
A = -6
B = 20
︡b0811d41-e9e4-4c4f-ba04-4cf184f34b43︡{"done":true}
︠4c4c62cd-8616-472d-9fe2-91f7db8db50es︠
P = (-1,-5)
Q = (2,4)

x1 = -1
y1 = -5
x2 = 2
y2 = 4
︡07b7113b-48d3-492e-bcd2-37b8dee8b7b5︡{"done":true}
︠31ea7d2d-e950-44c3-ba8e-765462bf7385s︠
#############################################################################################
#Define f(x) = (x^3 + Ax + B) - (Lx + v)^2
#############################################################################################
f(x) = x^3 - 6*x + 20 - (3*x - 2)^2

f(x)
expand(f(x))
︡f03b88df-b414-42e7-90bf-8c486a2bc417︡{"stdout":"x^3 - (3*x - 2)^2 - 6*x + 20\n"}︡{"stdout":"x^3 - 9*x^2 + 6*x + 16\n"}︡{"done":true}
︠8290e377-115f-4da0-b5b0-e5dae4918cbds︠
#############################################################################################
#We know f has a zero at -1 and 2 so we divide by (x+1)(x-2) to see the quotient and record the third zero
#############################################################################################

division(f(x),(x+1)*(x-2))
︡ffb3a2ed-19e4-4099-ad5c-142b2abfbf0c︡{"stdout":"quotient: "}︡{"stdout":" x - 8\nremainder:  0\n"}︡{"done":true}
︠57f899d2-6685-499f-85e0-6453355d088ds︠
#############################################################################################
# Function takes in function f and two zeros and returns the third zero
#############################################################################################

def third_zero(dividend, first_zero,second_zero) :
    q,r = dividend.maxima_methods().divide((x-first_zero)*(x-second_zero))
    return -q(0)
︡513808d2-daac-43cc-bbf6-d1396c992999︡{"done":true}
︠af09ba56-5aeb-4d9d-8db1-65f786f92250s︠
x3 = third_zero(f(x), -1, 2)
x3
︡debfde3b-f848-46ae-a978-a63cd8f31b51︡{"stderr":"<string>:1: DeprecationWarning: Substitution using function-call syntax and unnamed arguments is deprecated and will be removed from a future release of Sage; you can use named arguments instead, like EXPR(x=..., y=...)\nSee http://trac.sagemath.org/5930 for details.\n"}︡{"stdout":"8\n"}︡{"done":true}
︠46000225-a5b0-4b93-8902-67bdc343498as︠
y3 = -(3*x3 - 2)
y3
︡224c807d-8daf-4ee5-bc79-4c6e26caf01d︡{"stdout":"-22\n"}︡{"done":true}
︠9db1e723-c4f2-4479-a7b5-33e52701ad85s︠
#############################################################################################
#Automating the Process! (For P != Q)
#Y^2 = X^3 + AX + B
#P = (x1,y1)
#Q = (x2,y2)
#############################################################################################
︡d14d3e68-9b3f-4573-8d73-5b2492b38ad0︡{"done":true}
︠c62d4fe2-d854-4241-93ed-662fc55a809as︠
A = -6
B = 20

x1 = -1
y1 = -5
x2 = 2
y2 = 4
︡ccf96dda-9f9d-448f-ae2f-e65379ca6f60︡{"done":true}
︠fc91b853-f615-499e-8ea7-1face2f7187as︠
la = (y2 - y1)/(x2 - x1) #Slope of line between P and Q
L(x) = la*x - la*x1 +y1 #Line that connects P and Q

f(x) = x^3 + A*x + B - (la*x - la*x1 +y1)^2
︡9beef88e-e420-46b0-a934-925d228c2764︡{"done":true}
︠b42e4711-a2d3-4437-8565-a716eb4d5c6cs︠
division(f(x),(x-x1)*(x-x2))
︡d772298c-4276-4142-bb8c-2f032d6bae10︡{"stdout":"quotient:  x - 8\nremainder:  0\n"}︡{"done":true}
︠a50f2d9e-41b8-496e-854f-dac9fb1f356cs︠
x3 = third_zero(f(x),x1,x2)
x3

y3 = -L(x3)
y3
︡a3bf647c-dd41-4897-bb85-1c0c76d03a5c︡{"stdout":"8\n"}︡{"stdout":"-22\n"}︡{"done":true}
︠981adcd2-67ac-4f9e-9ded-96013fd6dd09︠









