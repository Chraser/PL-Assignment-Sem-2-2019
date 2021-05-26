main(1001).
main(N):- fizzbuzz(N), N1 is N + 1, main(N1).
fizzbuzz(N) :- 0 is mod(N, 15), write('FizzBuzz'), nl.
fizzbuzz(N) :- 0 is mod(N, 3) , write('Fizz'), nl.
fizzbuzz(N) :- 0 is mod(N, 5), write('Buzz'), nl.
fizzbuzz(N) :- write(N), nl.

:- initialization(main(1)).