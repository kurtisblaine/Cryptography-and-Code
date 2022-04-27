︠3349d7b5-257b-4b85-af45-3c9c3872d5c3︠
'Desmos Link for graphing ECs: https://www.desmos.com/calculator/yollrwlite'
︡24aaa23b-bfdb-4b6e-ae1d-e48727362450︡{"stdout":"'Desmos Link for graphing ECs: https://www.desmos.com/calculator/yollrwlite'"}︡{"stdout":"\n"}︡{"done":true}
︠95547455-96ad-44a8-b4f8-05508baeecbb︠
A = -6
B = 20
C = plot(EllipticCurve([0,0,0,A,B]), gridlines='true',xmin=-10, xmax=20, ymin=-20, ymax=20, legend_label='$y^2=x^3+Ax + B$')
show(C)
︡b596d09b-61bf-4f71-8882-7e77830f29ca︡{"file":{"filename":"/home/user/.sage/temp/project-ddfc60ef-f653-43be-a974-24116e98a3a6/297/tmp_CjKzzM.svg","show":true,"text":null,"uuid":"c59e4f48-b461-4de2-8763-181b2f3a1eea"},"once":false}︡{"done":true}
︠99de10c8-2daa-4ce0-901d-865466d743fas︠




def division(dividend, divisor) :
    q,r = dividend.maxima_methods().divide(divisor)
    print 'quotient: ', q
    print 'remainder: ', r
︡8dca2f57-8ec6-4f12-a3a8-2fe385abe76f︡{"done":true}
︠e4681b15-b8a8-4d88-91c3-9584ffb3b586s︠
#############################################################################################
#Example 6.1.5
#Add P = (-1,-5) to Q = (2,4)
#############################################################################################
A = -6
B = 20
︡37bda550-ca9d-45fd-958d-ce4ecac6f35e︡{"done":true}
︠4c4c62cd-8616-472d-9fe2-91f7db8db50es︠
T = (-1,5)

x1 = -1
y1 = 5
x2 = -1
y2 = 5
︡a82c42c4-07d5-4858-835f-c3afcf31ea40︡{"done":true}
︠31ea7d2d-e950-44c3-ba8e-765462bf7385s︠
#############################################################################################
#Define f(x) = (x^3 + Ax + B) - (Lx + v)^2
#############################################################################################
f(x) = x^3 - 6*x + 20 - (-3/10*x + 47/10)^2
︡4dbaf5f4-2153-4712-a517-4e25a4ff9956︡{"done":true}
︠8290e377-115f-4da0-b5b0-e5dae4918cbds︠
#############################################################################################
#We know f has a double zero at -1 so we divide by (x+1)(x+1) to see the quotient and record the third zero
#############################################################################################

division(f(x),(x+1)*(x+1))
︡7474237a-96d7-4724-a007-a579e480771d︡{"stdout":"quotient: "}︡{"stdout":" x - 209/100\nremainder:  0\n"}︡{"done":true}
︠57f899d2-6685-499f-85e0-6453355d088d︠
#############################################################################################
# Function takes in function f and two zeros and returns the third zero
#############################################################################################

def third_zero(dividend, first_zero,second_zero) :
    q,r = dividend.maxima_methods().divide((x-first_zero)*(x-second_zero))
    return -q(0)
︡39f6743d-dcda-41b9-b857-97d5b1e1eb01︡{"done":true}
︠af09ba56-5aeb-4d9d-8db1-65f786f92250︠
x3 = third_zero(f(x), -1, -1)
x3
︡b40a7ab9-94a1-4c39-a456-6d0a0ae5024d︡{"stdout":"209/100\n"}︡{"done":true}
︠46000225-a5b0-4b93-8902-67bdc343498a︠
y3 = -(-3/10*x3 + 47/10)
y3
︡7ea46dec-15e9-402b-a51c-fe8d25207c3f︡{"stdout":"-4073/1000\n"}︡{"done":true}
︠9db1e723-c4f2-4479-a7b5-33e52701ad85︠
#############################################################################################
#Automating the Process! (For P = Q)
#Y^2 = X^3 + AX + B
#T = (x1,y1)
#############################################################################################
︡e3904969-01b2-4399-b208-d3fc8644045c︡{"done":true}
︠c62d4fe2-d854-4241-93ed-662fc55a809a︠
A = -6
B = 20

x1 = -1
y1 = 5
x2 = -1
y2 = 5
︡0a164ff9-6d61-4242-883f-68c8a870aa2c︡{"done":true}
︠fc91b853-f615-499e-8ea7-1face2f7187a︠
la = (3*x1^2 + A)/(2*y1) #Slope of tangent line at T
L(x) = la*x - la*x1 +y1 #Tangent line at T

f(x) = x^3 + A*x + B - (la*x - la*x1 +y1)^2
︡4e9f774b-67be-4131-ab69-b4031887e150︡{"done":true}
︠b42e4711-a2d3-4437-8565-a716eb4d5c6c︠
division(f(x),(x-x1)*(x-x2))
︡046c7a3e-c898-4dc9-9b82-4e2cf6413ce8︡{"stdout":"quotient:  x - 209/100\nremainder:  0\n"}︡{"done":true}
︠a50f2d9e-41b8-496e-854f-dac9fb1f356c︠
x3 = third_zero(f(x),x1,x2)
x3

y3 = -L(x3)
y3
︡ca86739d-b2bf-41e4-a459-9a0be7f8e9b9︡{"stdout":"209/100\n"}︡{"stdout":"-4073/1000\n"}︡{"done":true}
︠981adcd2-67ac-4f9e-9ded-96013fd6dd09︠









