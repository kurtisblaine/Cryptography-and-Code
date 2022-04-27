︠3ff5cb7d-0023-4f70-b5b1-9dd59243c3d7︠
︠9e327c0e-5af3-4476-9ab2-2a7b6da45894︠
#################################################################
#Solve Quadratic Congruences
#p = 3 (mod 4)
#################################################################
︡7bd1df69-2012-483d-83a3-778101341cfc︡{"done":true}
︠894510f2-03d9-4e35-8a8c-9aefef3699d4s︠
#################################################################
#x^2 = 123 mod 7331
#################################################################
p = 7331
c = 123
mod(p,4) == 3 #Is p = 3 (mod 4)
legendre_symbol(c,p) == 1 #is c a square mod p
︡d754d50e-d035-4d32-a454-6348f9fdc2f5︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"done":true}
︠dfb3a221-b3ae-4de7-ba3c-2f51aab23a43s︠
#Define the Solution
x = power_mod(c,int((p+1)/4),p)
x
#Check!
power_mod(x,2,p) == c
power_mod(-x,2,p) == c
︡63ac56d9-8d94-4c1c-9194-a433e7e87a23︡{"stdout":"6776\n"}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"done":true}
︠fc727880-a65c-4b4b-a5b7-332e3d685fc8s︠
#################################################################
#x^2 = 31313 mod 8675311
#################################################################
p = 8675311
c = 31313
mod(p,4) == 3 #Is p = 3 (mod 4)
legendre_symbol(c,p) == 1 #is c a square mod p
︡b3529126-37f7-4be5-8455-5554bdeed5d3︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"done":true}
︠55d5c3cb-7271-42b1-ba19-1f76f50e4bb2s︠
#Define the Solution
x = power_mod(c,int((p+1)/4),p)
x
#Check!
power_mod(x,2,p) == c
power_mod(-x,2,p) == c
︡2b3ebb6c-8280-4684-a6d7-8fa903091e69︡{"stdout":"753818\n"}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"done":true}
︠02059f37-6986-4743-992d-d068473f3b3a︠









