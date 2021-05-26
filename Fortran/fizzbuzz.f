	  program fizzbuzz
	  
      integer currentNum, maxNum
	  
	  currentNum = 1
   60 maxNum = 100
   10 if (mod(currentNum, 15) .EQ. 0) then
		write (*,*) 'FizzBuzz'
   13 elseif (mod(currentNum, 3) .EQ. 0) then
	    write (*,*) 'Fizz'
	  elseif (mod(currentNum, 5) .EQ. 0) then
	    write (*,*) 'Buzz'
	  else
	    write (*,*) currentNum
	  endif
	  
	  if (currentNum .LT. maxNum) then 
	      currentNum = currentNum + 1
		  GOTO 10
	  endif
	  
	  stop
	  end