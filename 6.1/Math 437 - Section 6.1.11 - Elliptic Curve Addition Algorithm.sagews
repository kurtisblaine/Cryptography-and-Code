︠52ed1822-646d-420c-b446-ae8f40d68f0cs︠
A = -6
B = 20
︡3d4828a1-ab9e-4a68-9341-24db4ab360c5︡{"done":true}
︠34e01ec4-2e8a-4524-97e0-1cba80bf9028s︠
C = plot(EllipticCurve([0,0,0,A,B]), gridlines='true',xmin=-10, xmax=20, ymin=-20, ymax=20, legend_label='$y^2=x^3+Ax + B$')
show(C)
︡5710e907-ca64-4a11-8cdf-963e88cbdd07︡{"file":{"filename":"/home/user/.sage/temp/project-ddfc60ef-f653-43be-a974-24116e98a3a6/598/tmp_7gUdC3.svg","show":true,"text":null,"uuid":"f3093626-a511-402b-863f-ce06c60a7a77"},"once":false}︡{"done":true}
︠a4ea2f15-540e-4c8f-8096-922aa0986363s︠
#############################################################################################
# Function takes a point P and an Elliptic Curve E and determines if P is on E
# Note: We send the A and B from Y^2 = X^3 + AX + B
#############################################################################################

def on_EC(A,B,P):
    x1 = P[0]
    y1 = P[1]
    if (y1^2 == x1^3 + A*x1 + B):
        return True
︡673d0a21-fad4-43c4-93f8-522467fcab92︡{"done":true}
︠0fa80547-9e0f-43e3-9011-eeae380393fbs︠
P = (-1 , -5)
on_EC(A,B,P)
︡134b375e-5af5-4f91-a2ae-a5ca453652a0︡{"stdout":"True\n"}︡{"done":true}
︠db5fa379-fb5b-4f24-8040-9c555894695cs︠
Q = (2 , 4)
on_EC(A,B,Q)
︡8ec52d1e-16db-4501-bda9-be13466d06ac︡{"stdout":"True\n"}︡{"done":true}
︠5075cb07-3a8e-49fc-bab1-5249a9b81708s︠
#############################################################################################
# Function takes two points point P1 and P2 and an Elliptic Curve E (over the Reals) and returns P1 + P2
# Note: We send the A and B from Y^2 = X^3 + AX + B
# Note: We record the point at infinity by ('inf','inf')
#############################################################################################

def EC_add_alg_R(A,B,P1,P2):
    x1 = P1[0]
    y1 = P1[1]
    x2 = P2[0]
    y2 = P2[1]
    
    if (x1 == 'inf' and y1 == 'inf'):
        return (x2, y2)
    elif (x2 == 'inf' and y2 == 'inf'):
        return (x1, y1)
    
    if (x1 == x2 and y1 == -y2):
        return ('inf','inf')
    
    if (x1 == x2 and y1 == y2):
        ll = (3*x1^2 + A)/(2*y1)
    else:
        ll = (y2 - y1)/(x2 - x1)
    x3 = ll^2 - x1 - x2
    y3 = ll*(x1 - x3) - y1
    return (x3, y3)
︡beb4ffd9-510c-42e9-baa8-1668e20ec0c0︡{"done":true}
︠b719818b-3d68-483e-a504-c6b6a4db1a90s︠
P = (-1 , -5)
Q = (2 , 4)

PQ = EC_add_alg_R(A,B,P,Q)
PQ

︡01678f38-5e10-4fee-91e1-c11a86c1cb61︡{"stdout":"(8, -22)\n"}︡{"done":true}
︠93e074e5-4b86-4939-86ea-515c70f59e9bs︠
P = (-1 , -5)
Q = (2 , 4)

PP = EC_add_alg_R(A,B,P,P)
PP
QQ = EC_add_alg_R(A,B,Q,Q)
QQ
︡4dd76f84-443e-4b19-b392-891b39826788︡{"stdout":"(209/100, 4073/1000)\n"}︡{"stdout":"(-55/16, 5/64)\n"}︡{"done":true}
︠6b3ec043-6c7b-46f6-9820-87c42b802f5c︠

︠edbc7d0a-dcd1-4627-a890-954525847ca7︠









