## Script that calculates a sequence of primes			        #1
								        #2
# Clear the prime array							#3
clear prime_sequence;							#4
									#5
# Retrieve user input							#6
fflush(stdout);								#7
nprimes = input("Enter number of primes (> 0): ");			#8
									#9
# Initializing x to 2 - gets rid of a comparison			#10
# operation inside the loop						#11
x = 2;									#12
									#13
# Initialize counter to 1 since 2 is a prime			        #14
prime_counter = 1;							#15
prime_sequence(prime_counter) = x;					#16
									#17
while prime_counter<nprimes						#18
  # Assume x is a prime number					        #19
  is_x_prime = 1;							#20
									#21
  # if the remainder of x/2 or x/y for y<x is zero then		#22
  #x is not a prime. 							#23
  if ( rem(x,2)==0 )							#24
    is_x_prime = 0;							#25
  else									#26
    for y=3:2:x-1							#27
      if ( rem(x,y)==0 )						#28
        is_x_prime = 0;							#29
        break;								#30
      endif								#31
    endfor								#32
  endif									#33
									#34
  # if is_x_prime is true (1) then save the value of		        #35
  # x in an array							#36
  if ( is_x_prime )							#37
    prime_counter++;							#38
    prime_sequence(prime_counter) = x;				        #39
  endif									#40
									#41
  x++;									#42
endwhile								#43

 x = [0:1:nprimes-1]
 y = x


line(x, y, "linewidth", 5, "color", "blue");

hold on

scatter(x, prime_sequence, 10, "red", "filled");

set(gca, "fontsize", 15, "xlim", [0, max(x)], "ylim", [0, max(prime_sequence)])

axis("square");
