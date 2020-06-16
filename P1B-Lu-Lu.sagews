︠aca81423-c1e1-4395-ae8e-adb3ad59a6f8︠
#Lu Lu - P1B

#1. Test given code with an input of 2, 3, 4, and 5

#The function PathEnumeration will input an integer called numNodes, >1.  The function will return the list of all Hamiltonian cycles, on a complete graph, that start at a home node of 0.

def PathEnumeration(numNodes):

    SP=[[0]]
    LP=[]
    LPpathLengths=0

    while (LPpathLengths < numNodes):

        for i in range(1,len(SP)+1): #cycling through the short paths of SP
            for j in range(2, numNodes+1):#Append to SP[i] the numbers not in SP[i]
                doAppend=true
                for k in range(1, len(SP[i-1])+1): #see if j is in SP[i]
                    if j==SP[i-1][k-1]+1: #or getCost is too high
                        doAppend=false
                        break

                if doAppend:
                    LP.append(SP[i-1]+[j-1])

        LPpathLengths=len(LP[0])

        SP=LP
        LP=[]

#    print 'SP =', SP
    return SP

PathEnumeration(2)
︡8ad11617-1a20-4d72-b45a-ec652afd147e︡{"stdout":"[[0, 1]]\n"}︡{"done":true}
︠f277c461-4d23-43fc-aae3-1aeb339253b7︠
PathEnumeration(3)
︡d54fcb19-0e56-43cd-9442-f3374a89e773︡{"stdout":"[[0, 1, 2], [0, 2, 1]]\n"}︡{"done":true}
︠d18dc68e-7a22-47fd-8862-d5822cc356a6s︠
PathEnumeration(4)
︡1dd1bb11-bfef-4dcb-a5b0-6e97f9047625︡{"stdout":"[[0, 1, 2, 3], [0, 1, 3, 2], [0, 2, 1, 3], [0, 2, 3, 1], [0, 3, 1, 2], [0, 3, 2, 1]]\n"}︡{"done":true}
︠60b98d90-5e08-4438-9865-d676a9f20926s︠
PathEnumeration(5)
︡3bbf83c1-80ed-4c97-8e12-a8ab02176983︡{"stdout":"[[0, 1, 2, 3, 4], [0, 1, 2, 4, 3], [0, 1, 3, 2, 4], [0, 1, 3, 4, 2], [0, 1, 4, 2, 3], [0, 1, 4, 3, 2], [0, 2, 1, 3, 4], [0, 2, 1, 4, 3], [0, 2, 3, 1, 4], [0, 2, 3, 4, 1], [0, 2, 4, 1, 3], [0, 2, 4, 3, 1], [0, 3, 1, 2, 4], [0, 3, 1, 4, 2], [0, 3, 2, 1, 4], [0, 3, 2, 4, 1], [0, 3, 4, 1, 2], [0, 3, 4, 2, 1], [0, 4, 1, 2, 3], [0, 4, 1, 3, 2], [0, 4, 2, 1, 3], [0, 4, 2, 3, 1], [0, 4, 3, 1, 2], [0, 4, 3, 2, 1]]\n"}︡{"done":true}
︠ad1bd2ce-3512-4a75-bd61-542fa52d564d︠
#2. Create a variable called “weights”.  This variable will be a list of lists refer to P1A
weights=[[0,8,7,2,1],[8,0,3,2,9],[7,3,0,10,8],[2,2,10,0,10],[1,9,8,10,0]]

#test case for weights
#print weights[0][1]

︡4f28655a-20a0-4e22-8462-73ce0e89a845︡{"done":true}
︠335b86da-2750-400d-974d-684a5e4ed5ee︠
#3.  Write a function called “goHome”.  This function will input a list of lists (which will actually be the output of thePathEnumeration function) and add the home node to each sublist. It will then return the new list of lists.
def goHome(list):
    for i in list:
        i.append(0) #add 0 at the end of each list for returning to point 0.
    return list

#test case for goHome
#list1=[[0],[0,1],[0,1,2]]
#print goHome(list1)
︡f334a636-1483-4e4d-b911-49fe7ff375d8︡{"done":true}
︠d1847e88-75cc-46fb-a1ac-5d1f877abf1b︠
#4.  Write a function called “getCost”.  This function will input a list of any length (such that corresponding weights are available).
def getCost(list):
    l=len(list)
    cost=0
    for i in range(0,l-1):
        cost+=weights[list[i]][list[i+1]] #add each weights between two points into cost for storing the total cost of the path
    return cost

#test case for getCost
#list=[0,3,2,1,0]
#print getCost(list)
︡1c90d854-21dd-4d7d-bc86-ac29147f798a︡{"done":true}
︠135e2da2-e0b2-42a4-8b2c-0ce2e6efa9ad︠
#5.  Write a function called “getAllCosts”.  This function will input a list of lists (which will actually be the output of the goHome function).  It will return a new list of all the costs of each sublist.
def getAllCosts(list):
    allCost=[] #create a new list for storing the cost for each given path by the order of the list
    for i in list:
        allCost.append(getCost(i)) #for each list of input, using getCost to get the cost of the given path and put the results in allCost list
    return allCost

#test case for getAllCosts
#list=[[0,1,2,3,0],[0,1,3,2,0],[0,2,1,3,0]]
#print getAllCosts(list)
︡32fbf76e-44e1-48f8-a137-2d49bca8c9c4︡{"done":true}









