# On some systems, the text that you want to print to the screen may be buffered. Basically, this means that the text can sit in a queue and wait to be displayed and can potentially be an annoying problem. To be sure to avoid this, you can flush the buffer before you prompt the user for input. This is done via the command fflush(stdout) , where stdout is the output buffer (or stream)

fflush(stdout)

nr = input("Enter the number of rows in the matrix: ");	   #1
nc = input("Enter the number of columns in the matrix: ");	   #2
									   #3
A = rand(nr,nc);							   #4
									   #5
minA = min(min(A));							   #6
									   #7
disp("The minimum of A is");					   #8
disp(minA);								   #9
