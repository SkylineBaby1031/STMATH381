︠6d775d8a-6054-4499-a596-129d8b5cd6bc︠
#H6-4
#4.  Suppose that, initially, a randomly selected car is equally likely to be at any of the three locations.
#(a) What is the initial probability vectorp(0)?  Be careful not to round here.  Rounding errors will be compoundedwhen you compute long term behavior.
print '1) Initially car is equally be ast any of three locations, the initial probability p(0) will be: '
p=matrix(3, 1, [1/3, 1/3, 1/3])
print p

︡4282839a-aec1-4932-a0ab-a2bc87313c59︡{"stdout":"1) Initially car is equally be ast any of three locations, the initial probability p(0) will be: \n"}︡{"stdout":"[1/3]\n[1/3]\n[1/3]\n"}︡{"done":true}
︠10481d9b-882e-4905-a88e-324400e43452s︠
#(b) What are the probabilities that this randomly selected car will be at each of the three locations after one week?How about after two weeks?  Three weeks?  As the number of weeks becomes very large? 
print 'The transition matrix P is: '
P=matrix(3,3,[3/5, 1/10, 1/10, 1/10, 4/5, 1/5, 3/10, 1/10, 7/10])
print P
print
print 'From the markov Chain, p(t) = P^(t) * p(0) where t is the transition time.'
print 'After one week, t=1, the probability p(1) is: '
print P*p
print
print 'After two week, t=2, the probability p(2) is: '
print P^2 *p
print
print 'After three week, t=3, the probability p(3) is: '
print P^3 *p
print
print 'After a thousand week, t=1000, the probability p(1000) is: '
print P^1000 *p
print
print 'After two thousand, t=2000, the probability p(2000) is: '
print P^2000 *p
print
print 'From the previous matrix, we can see that in a long term, the probability will close to identical as p = '
pFinal=matrix(3,1,[0.20 ,0.45, 0.35])
print pFinal

︡8a4f39ac-4518-4326-b280-24c1913b5723︡{"stdout":"The transition matrix P is: \n"}︡{"stdout":"[ 3/5 1/10 1/10]\n[1/10  4/5  1/5]\n[3/10 1/10 7/10]\n"}︡{"stdout":"\n"}︡{"stdout":"From the markov Chain, p(t) = P^(t) * p(0) where t is the transition time.\n"}︡{"stdout":"After one week, t=1, the probability p(1) is: \n"}︡{"stdout":"[0.225000000000000]\n[0.475000000000000]\n[0.300000000000000]\n"}︡{"stdout":"\n"}︡{"stdout":"After two week, t=2, the probability p(2) is: \n"}︡{"stdout":"[0.212500000000000]\n[0.462500000000000]\n[0.325000000000000]\n"}︡{"stdout":"\n"}︡{"stdout":"After three week, t=3, the probability p(3) is: \n"}︡{"stdout":"[0.206250000000000]\n[0.456250000000000]\n[0.337500000000000]\n"}︡{"stdout":"\n"}︡{"stdout":"After a thousand week, t=1000, the probability p(1000) is: \n"}︡{"stdout":"[0.200000000000000]\n[0.450000000000000]\n[0.350000000000000]\n"}︡{"stdout":"\n"}︡{"stdout":"After two thousand, t=2000, the probability p(2000) is: \n"}︡{"stdout":"[0.200000000000000]\n[0.450000000000000]\n[0.350000000000000]\n"}︡{"stdout":"\n"}︡{"stdout":"From the previous matrix, we can see that in a long term, the probability will close to identical as p = \n"}︡{"stdout":"[0.200000000000000]\n[0.450000000000000]\n[0.350000000000000]\n"}︡{"done":true}
︠c3ef58a1-40cc-4ec5-b9bc-63d51a2b5cd9s︠
#5.  Repeat number 4, but this time assume that the initial randomly selected car has probability 0.25 of being in locationP, probability 0.5 of being in locationQ, and probability 0.25 of being in locationR.  What did you discover?
p=matrix(3,1,[0.25, 0.5, 0.25])
print 'From the markov Chain, p(t) = P^(t) * p(0) where t is the transition time.'
print 'After one week, t=1, the probability p(1) is: '
print P*p
print
print 'After two week, t=2, the probability p(2) is: '
print P^2 *p
print
print 'After three week, t=3, the probability p(3) is: '
print P^3 *p
print
print 'After a thousand week, t=1000, the probability p(1000) is: '
print P^1000 *p
print
print 'After two thousand, t=2000, the probability p(2000) is: '
print P^2000 *p
print

print 'From the examples, we can discover that no matter what the initial probability matrix is, after a certain terms, it will close to an identical probability '
pFinal=matrix(3,1,[0.20 ,0.45, 0.35])
print pFinal
︡119824ca-4f7a-472f-95bd-a42c639198a8︡{"stdout":"From the markov Chain, p(t) = P^(t) * p(0) where t is the transition time.\n"}︡{"stdout":"After one week, t=1, the probability p(1) is: \n"}︡{"stdout":"[0.225000000000000]\n[0.475000000000000]\n[0.300000000000000]\n"}︡{"stdout":"\n"}︡{"stdout":"After two week, t=2, the probability p(2) is: \n"}︡{"stdout":"[0.212500000000000]\n[0.462500000000000]\n[0.325000000000000]\n"}︡{"stdout":"\n"}︡{"stdout":"After three week, t=3, the probability p(3) is: \n"}︡{"stdout":"[0.206250000000000]\n[0.456250000000000]\n[0.337500000000000]\n"}︡{"stdout":"\n"}︡{"stdout":"After a thousand week, t=1000, the probability p(1000) is: \n"}︡{"stdout":"[0.200000000000000]\n[0.450000000000000]\n[0.350000000000000]\n"}︡{"stdout":"\n"}︡{"stdout":"After two thousand, t=2000, the probability p(2000) is: \n"}︡{"stdout":"[0.200000000000000]\n[0.450000000000000]\n[0.350000000000000]\n"}︡{"stdout":"\n"}︡{"stdout":"From the examples, we can discover that no matter what the initial probability matrix is, after a certain terms, it will close to an identical probability \n"}︡{"stdout":"[0.200000000000000]\n[0.450000000000000]\n[0.350000000000000]\n"}︡{"done":true}
︠cfb0dd6f-a48f-435e-b15d-214960d667a2s︠
#6.  Find the eigenvalues and eigenvectors ofP.  By experimenting on the computer, notice thatPnconverges (asngetslarge) to a matrix whose columns are all identical probability vectors.  This common column vector is called asteadystatevector.  Explain how this happens for this particular Markov chain in terms of eigenvalues and eigenvectors.  Inparticular,  explain the relationship between one particular eigenvector and this steady state vector.  (See notes MCp10-11.)
P=matrix(3,3,[3/5, 1/10, 1/10, 1/10, 4/5, 1/5, 3/10, 1/10, 7/10])
print 'The eigenvalues of P is ', P.eigenvalues(),  '. The eigenvectors of P is '
print P.eigenvectors_right()
print 'The steady state vector we find previously is '
print pFinal
print 'Notice, when eigen value is 1, the eigen vectors is [1, 9/4, 7/4], interpret to ratios sum to 1, it is [0.2, 0.45, 0.35] which identically be the steady state vector. We can use the eigen values and eigen vectors to determine the long term behavior of MC'
︡a3804633-b0b5-4d4e-a288-ba9dac9ac6f3︡{"stdout":"The eigenvalues of P is  [1, 3/5, 1/2] . The eigenvectors of P is \n"}︡{"stdout":"[(1, [\n(1, 9/4, 7/4)\n], 1), (3/5, [\n(0, 1, -1)\n], 1), (1/2, [\n(1, 1, -2)\n], 1)]\n"}︡{"stdout":"The steady state vector we find previously is \n"}︡{"stdout":"[0.200000000000000]\n[0.450000000000000]\n[0.350000000000000]\n"}︡{"stdout":"Notice, when eigen value is 1, the eigen vectors is [1, 9/4, 7/4], interpret to ratios sum to 1, it is [0.2, 0.45, 0.35] which identically be the steady state vector. We can use the eigen values and eigen vectors to determine the long term behavior of MC\n"}︡{"done":true}
︠6f217b0c-76da-488a-8191-3bcb04a48ac4s︠
#7.In the context of this problem about automobiles, what does the steady state vector say about the long termbehavior of the Markov chain when started with any initial probability vectorp(0)?
print 'The steady state vector interpret that The steady state vector tells that the long term behavior of the markov chain is indenpendent of the initial probability vector.'
print 'The steady state vector is the limit of the markov chain. Regardless of the initial probability of car at each location, it will finally reaching 20% of cars at P, 45% of cars at Q, 35% of cars at R'
︡538180ff-a6fb-46d7-9be6-993297bf739c︡{"stdout":"The steady state vector interpret that The steady state vector tells that the long term behavior of the markov chain is indenpendent of the initial probability vector.\n"}︡{"stdout":"The steady state vector is the limit of the markov chain. Regardless of the initial probability of car at each location, it will finally reaching 20% of cars at P, 45% of cars at Q, 35% of cars at R\n"}︡{"done":true}
︠c2630ed0-f9a3-4a33-9f2c-ac61932c4f6d︠

︠01700288-ec18-41df-81de-1d4431383fdb︠









