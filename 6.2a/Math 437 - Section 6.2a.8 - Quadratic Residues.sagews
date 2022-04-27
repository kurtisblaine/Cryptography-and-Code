︠58d0a114-0109-495a-997e-b76c99633c89s︠
#################################################################
#Solving Quadratic Congruences Modulo N (Brute Force)
#################################################################
︡cfa1ea54-aebf-4012-8727-c15342e7f19c︡{"done":true}
︠414d9223-7c70-44c1-bd99-a4a36dcff5e3s︠
#x^2 = 143 mod 7331
p = 7331
c = 143
for x in range(p):
    if power_mod(x,2,p) == c:
        print x
︡06e2818b-c48e-42fb-838a-3399b368d750︡{"done":true}
︠dc60ac87-e366-4201-b90a-9b28792ddb26s︠
#x^2 = 123 mod 7331
p = 7331
c = 123
for x in range(p):
    if power_mod(x,2,p) == c:
        print x
︡224dc9f7-d65c-4376-a7a4-0ddcf0ffef4c︡{"stdout":"555\n6776\n"}︡{"done":true}
︠b6aa88b9-5a5b-4144-9412-f4731f780146s︠
#################################################################
#What are squars modulo 7?
#################################################################
︡0364ff62-b51c-46a8-aa1e-fa268d005568︡{"done":true}
︠59458e19-82e0-4a10-ad18-603d308c6e3as︠
#x^2 = ?? mod 7
for x in range(7):
    print x,'^2 =',power_mod(x,2,7), 'mod 7'
︡a24ba87c-b761-4086-b6be-d7d135362cfb︡{"stdout":"0 ^2 = 0 mod 7\n1 ^2 = 1 mod 7\n2 ^2 = 4 mod 7\n3 ^2 = 2 mod 7\n4 ^2 = 2 mod 7\n5 ^2 = 4 mod 7\n6 ^2 = 1 mod 7\n"}︡{"done":true}
︠10869dc0-4d50-4b61-a51b-56e4bb058798s︠
#################################################################
#Quadratic Residues
#################################################################
︡00a9427b-4ae6-4e27-99a9-d4f20b094f19︡{"done":true}
︠181aaa66-acb0-493b-b5cb-336afebc8e60s︠
#143 is not a square modulo 7331
p = 7331
c = 143
power_mod(c,int((p-1)/2),p)
legendre_symbol(c,p)
︡9f08a959-a14b-4e4a-90df-056354640d17︡{"stdout":"7330\n"}︡{"stdout":"-1\n"}︡{"done":true}
︠e6885e37-28ef-4f4d-bcaa-8aef116fe474s︠
#123 is a square modulo 7331
p = 7331
c = 123
power_mod(c,int((p-1)/2),p)
legendre_symbol(c,p)
︡309a9aaa-14e4-4508-b120-80c30384d8a4︡{"stdout":"1\n"}︡{"stdout":"1\n"}︡{"done":true}
︠ce77c0df-cca6-4c96-8bc0-ad16e8f701a9s︠
#1337 is a square modulo 8675309
p = 8675309
c = 1337
power_mod(c,int((p-1)/2),p)
legendre_symbol(c,p)
︡9dc3a260-bbe9-40a7-bd81-68fa6e85a3be︡{"stdout":"1\n"}︡{"stdout":"1\n"}︡{"done":true}
︠e0fbb81c-79bb-4889-9214-3d67d07a1375︠









