︠ce9d4a11-9ece-46d9-a6a9-098ca53acab8︠
#Lu Lu - P1D

#1 For each value of n,n= 2,3,4,5, find the Greedy Path and Greedy Cost for the TSP on n nodes using the weights given previously.

#n=2
#Greedy path: [0,1,0]
#Greedy Cost: 16

#n=3
#Greedy path: [0,2,1,0]
#Greedy Cost: 18

#n=4
#Greedy path: [0,3,1,2,0]
#Greedy Cost: 14

#n=5
#Greedy path: [0,4,2,1,3,0]
#Greedy Cost: 16
︡ad63f647-b3b5-4f59-bf08-ddc8402c28e6︡
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
                    if j==SP[i-1][k-1]+1:
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
︡30003a8f-3fff-46cb-963a-060361a87f9d︡{"stdout":"[[0, 1]]\n"}︡{"done":true}
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

︡e5e51bfd-82f5-4b62-ae8b-551c770eb0a1︡{"done":true}
︠335b86da-2750-400d-974d-684a5e4ed5ees︠
#3.  Write a function called “goHome”.  This function will input a list of lists (which will actually be the output of thePathEnumeration function) and add the home node to each sublist. It will then return the new list of lists.
def goHome(list):
    for i in list:
        i.append(0) #add 0 at the end of each list for returning to point 0.
    return list

#test case for goHome
#list1=[[0],[0,1],[0,1,2]]
#print goHome(list1)
︡bfd9452c-77cc-4ef1-beb4-606749d324ef︡{"done":true}
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
︡8a7ee3b6-d82e-4668-83fe-7a6d0ae13d52︡{"done":true}
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
︡28d0f173-55e5-4d9d-93fe-ee42940c9d40︡{"done":true}
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
︡4943fda0-63a9-4322-bbe1-858e04439fc6︡{"done":true}
︠a778687e-d962-44f9-badd-cd59b9f1b246s︠
#2  Test your function for each integer 2, 3, 4, and 5.

#Test for 2 nodes
print "A solution to TSP with 2 nodes is ", bfTSP(2), "with a cost of ", getCost(bfTSP(2)), "."

︡45e19f94-c77b-4e55-89b9-aa2c7036a8c9︡{"stdout":"A solution to TSP with 2 nodes is  [0, 1, 0] with a cost of  16 .\n"}︡{"done":true}
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
︠e9dc13d3-e65d-4152-b19d-5b8b8a330ba6s︠
#Lu Lu - P1D
#2. Create a variable called “gCosts”.  gCosts will be a list of length six.  The first two entries will be zero.  These won’tactually be used for anything.  The next four entries will be the greedy costs from above.
gCosts=[0,0,16,18,14,16]
︡743c8719-4fda-4054-b343-4ba7d3e7efe1︡{"done":true}
︠65cdd22c-70ef-4f1a-be71-6a3e5775e013s︠
#3. Make a copy of the PathEnumeration function.  Name the new copy “gbbPathEnumeration”.  Edit this to perform the“pruning” in the Greedy Branch and Bound Algorithm.
def gbbPathEnumeration(numNodes):

    SP=[[0]]
    LP=[]
    LPpathLengths=0

    while (LPpathLengths < numNodes):

        for i in range(1,len(SP)+1): #cycling through the short paths of SP
            for j in range(2, numNodes+1):#Append to SP[i] the numbers not in SP[i]
                doAppend=true
                for k in range(1, len(SP[i-1])+1): #see if j is in SP[i]
                    if j==SP[i-1][k-1]+1 or getCost(SP[i-1])>gCosts[numNodes]:
                        doAppend=false
                        break

                if doAppend:
                    LP.append(SP[i-1]+[j-1])

        LPpathLengths=len(LP[0])

        SP=LP
        LP=[]

#    print 'SP =', SP
    return SP

#Test case for gbbPathEnumeration(numNodes)
#gbbPathEnumeration(5)
︡fc38865c-4689-426a-b0e7-bb3f6e70b7fd︡{"done":true}
︠b27c0c14-0fd1-4e64-b5fe-c2b0b96aaec0s︠
#4. Write a function called gbbTSP. Similar to P1C, this function will take an integer 2, 3, 4, or 5 as an input.  This integerwill be the number of nodes.  Note that an input of 2 means you are only using nodes 0 and 1.  An input of 3 meansthat you are using nodes 0, 1, and 2, etc.
def gbbTSP(node):
    list=gbbPathEnumeration(node) #generate the branch list
    homeList=goHome(list)         #get the total list of given nodes
    cost=getAllCosts(homeList)    #create list with all the cost in it with all the path
    minCost=min(cost)             #find the path with minimum cost
    location=cost.index(minCost)  #find the index of the minimum cost
    return homeList[location]     #using the index to find the path

#Test case for gbbTSP(node)
#gbbTSP(5)
︡5c78ebd0-3582-4046-9824-165ed550ae29︡{"done":true}
︠42bba5a5-6aa1-463a-9a39-3fe283d54053s︠
# Test your function for each integer 2, 3, 4, and 5.  Put these tests in different cells.  Each test should print a sentencewhich includes the solution.

#Test for 2 nodes
print "A solution to TSP with 2 nodes is ", gbbTSP(2), "with a cost of ", getCost(gbbTSP(2)), "."
︡c51fb054-1522-41d4-88cd-77be0a053111︡{"stdout":"A solution to TSP with 2 nodes is  [0, 1, 0] with a cost of  16 .\n"}︡{"done":true}
︠ce07daec-ee95-4c17-b9a0-812638dd51dbs︠
#Test for 3 nodes
print "A solution to TSP with 3 nodes is ", gbbTSP(3), "with a cost of ", getCost(gbbTSP(3)), "."
︡78d996dc-74a8-4ca6-9184-2edb2eca5785︡{"stdout":"A solution to TSP with 3 nodes is  [0, 1, 2, 0] with a cost of  18 .\n"}︡{"done":true}
︠2a5b9384-2f1b-455c-a646-5ae06ba4bf0ds︠
#Test for 4 nodes
print "A solution to TSP with 3 nodes is ", gbbTSP(4), "with a cost of ", getCost(gbbTSP(4)), "."
︡20036b4e-034d-4f0f-9033-f00b106bd17c︡{"stdout":"A solution to TSP with 3 nodes is  [0, 2, 1, 3, 0] with a cost of  14 .\n"}︡{"done":true}
︠7076734a-a572-47b9-a53e-75a19992655ds︠
#Test for 5 nodes
print "A solution to TSP with 3 nodes is ", gbbTSP(5), "with a cost of ", getCost(gbbTSP(5)), "."
︡bd05cd06-eb50-485e-a64c-bea4c4faec02︡{"stdout":"A solution to TSP with 3 nodes is  [0, 3, 1, 2, 4, 0] with a cost of  16 .\n"}︡{"done":true}
︠b2320eaa-6ca0-4032-82af-91fe51598114︠









