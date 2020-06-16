︠85e36fa0-0fa7-445c-b98d-e50127051eb0s︠
#HW7
#3
Q = matrix(4,4,[1/2, 0, 1/4, 0, 0, 0, 1/8, 0, 1/4, 1, 1/4, 1/4, 0, 0, 1/4, 1/2])
I = matrix(4,4,[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1])
R = matrix(2,4,[1/4, 0, 1/16, 0, 0, 0, 1/16, 1/4])
N = (I-Q)^-1
B = R*N
P = matrix(6,6,[1/2, 0, 1/4, 0, 0, 0, 0, 0, 1/8, 0, 0, 0, 1/4, 1, 1/4, 1/4, 0, 0, 0, 0, 1/4, 1/2, 0, 0, 1/4, 0, 1/16, 0, 1,0, 0, 0, 1/16, 1/4, 0, 1])
p = matrix(4,1, [1/4, 1/4, 1/4, 1/4])
print
print 'I = ', I
print
print 'R = ', R
print
print 'N = ', N
print
print 'B = ', B
print
print 'Np = ', N*p
print
print 'Bp = ', B*p
print
print n(P^100)
︡36c2f658-58b7-4cf3-805c-4e09b36c0314︡{"stdout":"\n"}︡{"stdout":"I =  [1 0 0 0]\n[0 1 0 0]\n[0 0 1 0]\n[0 0 0 1]\n"}︡{"stdout":"\n"}︡{"stdout":"R =  [ 1/4    0 1/16    0]\n[   0    0 1/16  1/4]\n"}︡{"stdout":"\n"}︡{"stdout":"N =  [8/3 4/3 4/3 2/3]\n[1/6 4/3 1/3 1/6]\n[4/3 8/3 8/3 4/3]\n[2/3 4/3 4/3 8/3]\n"}︡{"stdout":"\n"}︡{"stdout":"B =  [3/4 1/2 1/2 1/4]\n[1/4 1/2 1/2 3/4]\n"}︡{"stdout":"\n"}︡{"stdout":"Np =  [3/2]\n[1/2]\n[  2]\n[3/2]\n"}︡{"stdout":"\n"}︡{"stdout":"Bp =  [1/2]\n[1/2]\n"}︡{"stdout":"\n"}︡{"stdout":"[1.63583591554910e-10 2.49933487888782e-10 2.02200439165429e-10 1.63583591554910e-10    0.000000000000000    0.000000000000000]\n[3.12416859860977e-11 4.77330487233522e-11 3.86168476105193e-11 3.12416859860977e-11    0.000000000000000    0.000000000000000]\n[2.02200439165429e-10 3.08934780884154e-10 2.49933487888782e-10 2.02200439165429e-10    0.000000000000000    0.000000000000000]\n[1.63583591554910e-10 2.49933487888782e-10 2.02200439165429e-10 1.63583591554910e-10    0.000000000000000    0.000000000000000]\n[   0.749999999719695    0.499999999571733    0.499999999653524    0.249999999719695     1.00000000000000    0.000000000000000]\n[   0.249999999719695    0.499999999571733    0.499999999653524    0.749999999719695    0.000000000000000     1.00000000000000]\n"}︡{"done":true}
︠d5c1e428-0041-4121-9d94-37bb42ff46b0︠

︠082e35bd-e87a-41e6-ae18-4f2fca1df095︠

︠8ca49aa5-d80b-4e32-836d-5ec5cfdf07ff︠

︠ce75065b-a875-4f8e-bdbc-36c4871b564e︠

︠d39d85ed-fefd-430c-a2b2-0c664a102db1︠

︠def5afdc-5cdf-4387-a4f7-1fbb3b4488cd︠

︠97e2e262-42cd-4439-baf2-f800cc32c507︠

︠750bf95a-dc6a-4238-882e-ecb8ad6623c8︠

︠966f70b7-46d8-4ca7-a55e-4dc5bc3b164e︠

︠84e6060e-5a47-4d99-b7f5-c25e28fe13e2︠

︠8ee042a7-4acb-4fc9-9bc7-63e14cc4e706︠









