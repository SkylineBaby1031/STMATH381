︠9a57a258-4070-4edc-999d-1f762b5963f3s︠
#Lu Lu- H1

#1. creating variable littleX=4, bigX=9, someList=[2,4,6,8,10] for later use
littleX = 4
bigX = 9
someList=[2,4,6,8,10]
︡e0d7d0c5-28d0-4b97-b9a3-10d68df7578e︡{"done":true}
︠5ce37eba-508d-4a84-a3cd-ca7f32e420fa︠
#2. make a function Avg which take two inputs a and b and compute the average.
Avg(a,b)=(a+b)/2
print Avg(littleX, bigX)
print n(Avg(littleX, bigX))

︡9151f164-1bbc-44f7-bab0-b5d4543ca056︡{"stdout":"13/2\n"}︡{"stdout":"6.50000000000000"}︡{"stdout":"\n"}︡{"done":true}
︠f9247062-3d4e-4521-bc83-840323e98303s︠
#3. Make a function called sqList that takes as input a list and returns as output the list formed by squaring each elementof the input list.  Then usesqListon the inputsomeListfrom #1.
def sqList(list):
    for i in range(0,len(list)):
        list[i]*=list[i]
    return list

print sqList(someList)
︡a9dcb4db-2e71-4036-9030-bb6b6fd3fae5︡{"stdout":"[4, 16, 36, 64, 100]\n"}︡{"done":true}
︠b984f5c5-cfc3-402c-ac25-55cc7d92f958s︠
#4.  Make a function called funTimes that takes as input a positive integer n and prints the following to screen:
def funTimes(n):
    if n <= 0:
        print 'Please input a positive integer.'
    else:
        for i in range (2,2+n):
            print range(1,i)

funTimes(1)
print ""
funTimes(5)
print ""
funTimes(10)
︡8b95736b-1ce8-49a6-9a98-18e76a56a7bd︡{"stdout":"[1]\n"}︡{"stdout":"\n"}︡{"stdout":"[1]\n[1, 2]\n[1, 2, 3]\n[1, 2, 3, 4]\n[1, 2, 3, 4, 5]\n"}︡{"stdout":"\n"}︡{"stdout":"[1]\n[1, 2]\n[1, 2, 3]\n[1, 2, 3, 4]\n[1, 2, 3, 4, 5]\n[1, 2, 3, 4, 5, 6]\n[1, 2, 3, 4, 5, 6, 7]\n[1, 2, 3, 4, 5, 6, 7, 8]\n[1, 2, 3, 4, 5, 6, 7, 8, 9]\n[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]\n"}︡{"done":true}
︠1d5d12de-d018-467d-981a-5affa6f10a79s︠
#5. Make a function called unitNormalVect that takes as input two numbersaandband returns the list
def unitNormalVect(a,b):
    if a==0 or b==0:
        return "Please enter non zero vectors."
    else:
        c = sqrt(a^2 + b^2)
        return [b/c, -a/c]
    return

unitNormalVect(0,0)
print""
unitNormalVect(1,2)
print""
unitNormalVect(4,5)
︡5a765e3b-5c0f-4169-8c83-09ba267f276c︡{"stdout":"'Please enter non zero vectors.'\n"}︡{"stdout":"\n"}︡{"stdout":"[2/5*sqrt(5), -1/5*sqrt(5)]\n"}︡{"stdout":"\n"}︡{"stdout":"[5/41*sqrt(41), -4/41*sqrt(41)]\n"}︡{"done":true}
︠7eedb1b3-34fd-4aff-92db-4695682d53ce︠

︠4e5ac86a-25a8-49ed-bb1d-dc50402037a8︠










