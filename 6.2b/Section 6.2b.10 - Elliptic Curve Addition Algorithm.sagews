︠1e4802ca-0333-4c4a-8d6f-47afa02dc3fbs︠
############################################################
#Y^2 = X^3 + 7X + 3 over F11
############################################################
A = 9
B = 5
p = 13
mod(4*A^3 + 27*B^2,p) != 0
︡96c656c4-802a-48d8-a097-7e79706d7b24︡{"stdout":"True\n"}︡{"done":true}
︠f2d4f200-8cb6-4f06-83ce-6e7ca79e5d93s︠
############################################################
#Add P = (2,5) and Q = (5,8)
# P + Q = ??
############################################################
︡dfb14a17-96fd-4025-a972-ea4fa58e630d︡{"done":true}
︠d9391aeb-e465-4993-9e07-3aa81f958b55s︠
P = [4,1]
Q = [8,2]
x1 = 4
y1 = 1

x2 = 8
y2 = 2
︡d694977a-f898-4ed5-b80c-6fba3030a6fa︡{"done":true}
︠0bdb06eb-2d60-42bb-a87e-918ed4ecc730s︠
inverse_mod(x2 - x1,p)
︡0bbbc1f4-0c56-45f5-b0c2-f8971fcaabf3︡{"stdout":"10\n"}︡{"done":true}
︠1fa3fde3-f717-4604-92fb-9eac3f3f00c1s︠
la = ((y2 - y1)*inverse_mod(x2 - x1,p))%p
la
︡feeb414b-0368-4ee4-86cb-361b06da2604︡{"stdout":"10\n"}︡{"done":true}
︠ce30f62f-8b84-4376-900c-158acb5322bd︠
x3 = (la^2 - x1 - x2)%p
y3 = (la*(x1 - x3) - y1)%p
R = [x3,y3]
R

︡fa3ea65d-1b2c-41fb-9377-80c2aeed4851︡{"stdout":"[10, 4]\n"}︡{"done":true}
︠97266f01-f1e1-4564-8dda-93cbaece9db9s︠
############################################################
#Add (2,5) and (2,5)
# P + P = ??
############################################################
︡4caf3d28-476b-47e9-899b-78cea1b7fa52︡{"done":true}
︠08c26f8f-c6d8-4aa7-8e12-624b9d08f482s︠
P = [2,5]
Q = [5,8]
x1 = 2
y1 = 5

x2 = 5
y2 = 8
︡bcde5981-bfe8-423a-a40b-6b0e9c791378︡{"done":true}
︠6bfaeaaa-923a-433a-8a75-7a40c35708f5s︠
P = [4,1]
x1 = 4
y1 = 1

x2 = 4
y2 = 1
︡ec22a538-83de-49a7-b644-0ccc44d55e08︡{"done":true}
︠7443e9db-7056-44fd-a463-b96f8cde9a37s︠
inverse_mod(2*y1,p)
︡bef36961-45ed-4376-814d-0a471adfe9cc︡{"stdout":"7\n"}︡{"done":true}
︠87789667-ce28-4f64-92a9-ebe8bd78dc44s︠
la = ((3*x1^2 + A)*inverse_mod(2*y1,p))%p
la
︡207df112-dc8b-4335-8bda-3144a5d5c709︡{"stdout":"9\n"}︡{"done":true}
︠b9dafdb0-1615-4d56-b767-2baece5d7167s︠
x3 = (la^2 - x1 - x2)%p
y3 = (la*(x1 - x3) - y1)%p
R = [x3,y3]
R
︡8a0ef4ec-92e6-4725-aceb-1633e5228938︡{"stdout":"[8, 2]\n"}︡{"done":true}
︠2f41081f-021f-4af6-865d-6e0713714491︠









