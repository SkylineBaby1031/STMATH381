︠716cb6c4-1201-4412-8eb6-ec2a954d17d1︠
#Lu Lu H4-3
#For the matrixAin problem 1, compute the following.
A = matrix(3,3,[-4, 0, 10, 0, -2, 0, -3, 0, 7])
#print A
︡20ae25a2-7c19-4824-94ab-9a1df32a0615︡{"stdout":"[-4  0 10]\n[ 0 -2  0]\n[-3  0  7]\n"}︡{"done":true}
︠5ceba2db-054c-40fa-9fe3-13ce7b988387︠
#a) A~y where ~y is the column vector ~y = (.4,.1,.5)T(note:  “T” means “transpose” here).

y = matrix(3,1,[0.4, 0.1, 0.5])

print 'A*y = ', A*y
︡8750b254-db26-4f80-b6a3-98d16f75bd81︡{"stdout":"A*y =  [  3.40000000000000]\n[-0.200000000000000]\n[  2.30000000000000]\n"}︡{"done":true}
︠7ed423af-9a1f-487f-bc5d-beb7a4b1538bs︠
#b) A^5
print 'A^5 = ', A^5
︡6ad86c6f-2c3f-4338-ae3a-167e1a4f618d︡{"stdout":"A^5 =  [-154    0  310]\n[   0  -32    0]\n[ -93    0  187]\n"}︡{"done":true}
︠425f4b42-63ea-4c9c-8fcc-64aa3e24ac7as︠
#c) |A|(the determinant ofA)
print 'The determinant of A is: ', A.determinant()

︡1135a05c-bdbc-4c19-8d02-53ffd7f9536d︡{"stdout":"The determinant of A is:  -4\n"}︡{"done":true}
︠bc044092-7123-41ac-b7cf-9bf51814842es︠
#d) eigenvalues ofA.
print 'The eigenvalue of A is: ', A.eigenvalues()
︡b6ecccb1-654a-41fe-a049-420ff8eabacb︡{"stdout":"The eigenvalue of A is:  [2, 1, -2]\n"}︡{"done":true}
︠770b0a34-1b3a-4ca4-8e86-b11161de0144s︠
#e) eigenvectors ofA. Print the eigenvectors in complete sentences using the print command. It is not enough to simplyrun the eigenvector command.  You should use what you know about selecting elements and sublists from lists towrite your answers in sentences.  For example, you should write something like “The eigenvector(s) correspondingto the eigenvalue ofare/is [·,·,·] and [·,·,·], transposed”.
eigenVectors = A.eigenvectors_right()
for i in eigenVectors:
    print 'The eigenvector(s) corresponding to the eigenvalue of %.f and %s, transposed'%(i[0],str(i[1][0]))
︡9ddc4ac3-15ee-4758-b275-6f558b279b0d︡{"stdout":"The eigenvector(s) corresponding to the eigenvalue of 2 and (1, 0, 3/5), transposed\nThe eigenvector(s) corresponding to the eigenvalue of 1 and (1, 0, 1/2), transposed\nThe eigenvector(s) corresponding to the eigenvalue of -2 and (0, 1, 0), transposed\n"}︡{"done":true}
︠14935ea8-a603-422b-802f-25e4946ebbc8︠









