︠aca81423-c1e1-4395-ae8e-adb3ad59a6f8s︠
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
︡6b03e4ce-fb26-47f6-a5f2-e743a56cec7b︡{"stdout":"[[0, 1]]\n"}︡{"done":true}
︠f277c461-4d23-43fc-aae3-1aeb339253b7s︠
PathEnumeration(3)
︡e5179998-6702-4389-bc95-249dd04c7f20︡{"stdout":"[[0, 1, 2], [0, 2, 1]]\n"}︡{"done":true}
︠d18dc68e-7a22-47fd-8862-d5822cc356a6s︠
PathEnumeration(4)
︡e0cf1725-9904-46c9-872e-1a5d5f04a6e8︡{"stdout":"[[0, 1, 2, 3], [0, 1, 3, 2], [0, 2, 1, 3], [0, 2, 3, 1], [0, 3, 1, 2], [0, 3, 2, 1]]\n"}︡{"done":true}
︠60b98d90-5e08-4438-9865-d676a9f20926s︠
PathEnumeration(5)
︡49f4c573-043e-4a0e-a5df-3b376ea26bc4︡{"stdout":"[[0, 1, 2, 3, 4], [0, 1, 2, 4, 3], [0, 1, 3, 2, 4], [0, 1, 3, 4, 2], [0, 1, 4, 2, 3], [0, 1, 4, 3, 2], [0, 2, 1, 3, 4], [0, 2, 1, 4, 3], [0, 2, 3, 1, 4], [0, 2, 3, 4, 1], [0, 2, 4, 1, 3], [0, 2, 4, 3, 1], [0, 3, 1, 2, 4], [0, 3, 1, 4, 2], [0, 3, 2, 1, 4], [0, 3, 2, 4, 1], [0, 3, 4, 1, 2], [0, 3, 4, 2, 1], [0, 4, 1, 2, 3], [0, 4, 1, 3, 2], [0, 4, 2, 1, 3], [0, 4, 2, 3, 1], [0, 4, 3, 1, 2], [0, 4, 3, 2, 1]]\n"}︡{"done":true}
︠ad1bd2ce-3512-4a75-bd61-542fa52d564ds︠
#2. Create a variable called “weights”.  This variable will be a list of lists refer to P1A
weights=[[0,8,7,2,1],[8,0,3,2,9],[7,3,0,10,8],[2,2,10,0,10],[1,9,8,10,0]]

#test case for weights
#print weights[0][1]

︡600fafe0-87a8-4fd1-9e80-502e2237a97a︡{"done":true}
︠335b86da-2750-400d-974d-684a5e4ed5ees︠
#3.  Write a function called “goHome”.  This function will input a list of lists (which will actually be the output of thePathEnumeration function) and add the home node to each sublist. It will then return the new list of lists.
def goHome(list):
    for i in list:
        i.append(0) #add 0 at the end of each list for returning to point 0.
    return list

#test case for goHome
#list1=[[0],[0,1],[0,1,2]]
#print goHome(list1)
︡782c82b0-18dc-4aae-87b5-9a0349bb2c4d︡{"done":true}
︠d1847e88-75cc-46fb-a1ac-5d1f877abf1bs︠
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
︡7081170a-9f1d-4534-b8c5-227239627389︡{"done":true}
︠135e2da2-e0b2-42a4-8b2c-0ce2e6efa9ads︠
#5.  Write a function called “getAllCosts”.  This function will input a list of lists (which will actually be the output of the goHome function).  It will return a new list of all the costs of each sublist.
def getAllCosts(list):
    allCost=[] #create a new list for storing the cost for each given path by the order of the list
    for i in list:
        allCost.append(getCost(i)) #for each list of input, using getCost to get the cost of the given path and put the results in allCost list
    return allCost

#test case for getAllCosts
#list=[[0,1,2,3,0],[0,1,3,2,0],[0,2,1,3,0]]
#print getAllCosts(list)
︡8ef9bd7e-c55d-4ca5-a022-b466066664a4︡{"done":true}
︠95300abb-f595-452e-b6f1-503b888831a4s︠
#Lu Lu - P1C

#1  Write a function called bfTSP. This function will take an integer 2,  3,  4,  or 5 as an input.  This integer will be thenumber of nodes.  Note that an input of 2 means you are only using nodes 0 and 1.  An input of 3 means that you areusing nodes 0, 1, and 2, etc.
def bfTSP(node):
    list=PathEnumeration(node)    #generate the all the lists
    homeList=goHome(list)         #get the total list of given nodes
    cost=getAllCosts(homeList)    #create list with all the cost in it with all the path
    minCost=min(cost)             #find the path with minimum cost
    location=cost.index(minCost)  #find the index of the minimum cost
    return homeList[location]     #using the index to find the path

#test case for bfTSP
#bfTSP(4)
︡144579c8-e520-4e88-a10c-1d21d1607d5d︡{"done":true}
︠a778687e-d962-44f9-badd-cd59b9f1b246︠
#2  Test your function for each integer 2, 3, 4, and 5.

#Test for 2 nodes
print "A solution to TSP with 2 nodes is ", bfTSP(2), "with a cost of ", getCost(bfTSP(2)), "."

︡b9d096f8-8556-48ba-bffc-f1d16f54aa89︡{"stdout":"A solution to TSP with 2 nodes is  [0, 1, 0] with a cost of  16 .\n"}︡{"done":true}
︠2488df6f-f73d-4497-ae81-2d6fd4394635︠
#Test for 3 nodes
print "A solution to TSP with 3 nodes is ", bfTSP(3), "with a cost of ", getCost(bfTSP(3)), "."
︡6b40335b-918e-4559-b4b3-3e60ca7c13d5︡{"stdout":"A solution to TSP with 3 nodes is  [0, 1, 2, 0] with a cost of  18 .\n"}︡{"done":true}
︠daad8b57-2db4-462c-9199-37197707adf4︠
#Test for 4 nodes
print "A solution to TSP with 4 nodes is ", bfTSP(4), "with a cost of ", getCost(bfTSP(4)), "."
︡741aa1f8-650d-46a2-8ae3-9ce754cfa99b︡{"stdout":"A solution to TSP with 4 nodes is  [0, 2, 1, 3, 0] with a cost of  14 .\n"}︡{"done":true}
︠4c635013-0541-44bf-9c4e-fc40996b49a0︠
#Test for 5 nodes
print "A solution to TSP with 5 nodes is ", bfTSP(5), "with a cost of ", getCost(bfTSP(5)), "."
︡e593fd62-ca92-40cf-a6b5-cc7742f08ae5︡{"stdout":"A solution to TSP with 5 nodes is  [0, 3, 1, 2, 4, 0] with a cost of  16 .\n"}︡{"done":true}
︠e9dc13d3-e65d-4152-b19d-5b8b8a330ba6︠










