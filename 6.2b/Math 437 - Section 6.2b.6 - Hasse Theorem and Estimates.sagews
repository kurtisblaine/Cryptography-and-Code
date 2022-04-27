︠32463d51-fb81-40e3-81da-f09a4d0b539bs︠
########################################################
#Square root mod p for p = 3 (mod 5) and p = 5 (mod 8)
########################################################
︡78911605-f470-41d8-97b5-29163cb8e6a0︡{"done":true}
︠b83d384f-ac00-4bb1-8fee-33b5b08f84fbs︠
def square_root_mod_p(c,p):
    """
    Solves x^2 = c (mod p)
    """
    if legendre_symbol(c,p) == -1:
        return 'DNE'
    if mod(p,4) == 3:
            x = power_mod(c,int((p+1)/4),p)
    elif mod(p,8) == 5:
        if power_mod(c,int((p-1)/4),p) == 1:
            x = power_mod(c,int((p+3)/8),p)
        else:
            x = (power_mod(2,int((p-1)/4),p)*power_mod(c,int((p+3)/8),p))%p
    else:
        return 'p = 1 mod 8'
    return x #Note: -x mod p is also a solution!
︡d8f38a1a-564a-4db8-891c-aa2a283ad38f︡{"done":true}
︠0b378c0f-22f1-4706-998b-eb43883b663bs︠
########################################################
#Construct a list of elements in E(F_p)
########################################################

︡6695e993-b0f8-4cd9-a767-0b3372f62c0e︡{"done":true}
︠71324dbe-fcc7-4f05-bebc-cb6781524886s︠
def construct_ECFp(A,B,p):
    if mod(4*A^3 + 27*B^2,p) == 0:
        return False #'Not an EC (Discriminant = 0)'
    if mod(p,8) == 1:
        return False #'p = 1 (mod 8)'
    EC = [['inf','inf']]
    for x in range(p):
        y_squared = mod(x^3+A*x +B,p)
        if legendre_symbol(y_squared,p) == 1:
            y = square_root_mod_p(y_squared,p)
            EC.append([x,y])
            EC.append([x,mod(-y,p)])
        if y_squared == 0:
            EC.append([x,0])
    EC.sort()
    return EC
︡024ef85d-2459-4a34-aef8-e207de565e35︡{"done":true}
︠7b4013fc-6c1e-4a89-a6c5-7b7cfb6e7828s︠
#EC: y^2 = x^3 + Ax + B
A = 7
B = 3
p = 11

EC_F_p = construct_ECFp(A,B,p)
print 'E(F_p)  =', EC_F_p
print '#E(F_p) =', len(EC_F_p)
︡3a7c2aed-a413-4173-b873-5ca4cfc997ad︡{"stdout":"E(F_p)  = [[0, 5], [0, 6], [1, 0], [2, 5], [2, 6], [5, 3], [5, 8], [9, 5], [9, 6], ['inf', 'inf']]\n"}︡{"stdout":"#E(F_p) = 10\n"}︡{"done":true}
︠284c6272-9f09-442b-8f9d-14e569ea9d17s︠
########################################################
#Estimates for #E(F_p)
########################################################
︡87c1c5b5-cc1f-47e3-bc9c-6f1d2e5aa6ba︡{"done":true}
︠c196a68a-9c59-45d4-b75b-aced0ab26a2ds︠
#EC: y^2 = x^3 + Ax + B
A = 7
B = 3
︡28a35a1d-0c00-4cdb-b1cf-6e792c80d467︡{"done":true}
︠7abe19d9-ca0d-4dd8-935f-91c169d8a91fs︠
for p in prime_range(3,38):
    EC_F_p = construct_ECFp(A,B,p)
    if construct_ECFp(A,B,p) != False:
        len_E = len(EC_F_p)
        print 'p =',p, '\t #E(F_p) =',len_E, '\t t_p =',p + 1 - len_E, '\t 2sqrt(p) =',numerical_approx(2*sqrt(p))
︡41f332bb-bfd0-4874-adf4-3cb9ea494fcc︡{"stdout":"p = 3 \t #E(F_p) = 4 \t t_p = 0 \t 2sqrt(p) = "}︡{"stdout":"3.46410161513775\np = 7 \t #E(F_p) = 13 \t t_p = -5 \t 2sqrt(p) = 5.29150262212918\np = 11 \t #E(F_p) = 10 \t t_p = 2 \t 2sqrt(p) = 6.63324958071080\np = 13 \t #E(F_p) = 13 \t t_p = 1 \t 2sqrt(p) = 7.21110255092798\np = 23 \t #E(F_p) = 31 \t t_p = -7 \t 2sqrt(p) = 9.59166304662544\np = 29 \t #E(F_p) = 24 \t t_p = 6 \t 2sqrt(p) = 10.7703296142690\np = 31 \t #E(F_p) = 27 \t t_p = 5 \t 2sqrt(p) = 11.1355287256600\np = 37 \t #E(F_p) = 44 \t t_p = -6 \t 2sqrt(p) = 12.1655250605964\n"}︡{"done":true}
︠e11668fd-fac1-408e-b9b6-50171a0dfa7c︠









