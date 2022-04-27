︠6e1cf946-b3bf-4466-99f8-6b9c42403c50︠
#################################################################
#Solve Quadratic Congruences
#p = 5 (mod 8)
#################################################################
︡a99b063f-598a-42e7-8052-3edbf7a1bdc5︡{"done":true}
︠1abcf75d-9ed6-4173-8dee-eda004e58ddas︠
#################################################################
#x^2 = 424242 mod 8675309
#################################################################
p = 8675309
c = 424242
mod(p,4) == 3 #Is p = 3 (mod 4)
mod(p,8) == 5 #Is p = 5 (mod 8)
legendre_symbol(c,p) == 1 #is c a square mod p
power_mod(c,int((p-1)/4),p)
︡f99adb48-aaa5-41f4-80ca-e54b71b72755︡{"stdout":"False\n"}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"stdout":"1\n"}︡{"done":true}
︠a2c37589-edff-411b-b8a8-dff682c1d454s︠
#Define the Solution
x = power_mod(c,int((p+3)/8),p)
x
#Check!
power_mod(x,2,p) == c
power_mod(-x,2,p) == c
︡3a985e76-006f-4779-9260-d43c4912fbc1︡{"stdout":"5450946\n"}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"done":true}
︠431374b3-3882-487c-9e9c-de4929f6bfc9s︠
#################################################################
#x^2 = 424242 mod 8675309
#################################################################
p = 8675309
c = 1337
mod(p,4) == 3 #Is p = 3 (mod 4)
mod(p,8) == 5 #Is p = 5 (mod 8)
legendre_symbol(c,p) == 1 #is c a square mod p
power_mod(c,int((p-1)/4),p)
︡7ba94148-620a-4275-b70b-cd9204cc2472︡{"stdout":"False\n"}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"stdout":"8675308\n"}︡{"done":true}
︠6de159ea-f9c9-48d9-b03c-eef61908d92cs︠
#Define the Solution
x = (power_mod(2,int((p-1)/4),p) * power_mod(c,int((p+3)/8),p))%p
x
#Check!
power_mod(x,2,p) == c
power_mod(-x,2,p) == c
︡2cace12d-8e13-4da8-a74a-9ab79936191b︡{"stdout":"1995554\n"}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"done":true}
︠1a75d0ba-4396-47cd-a859-e23529d3c7d2︠









