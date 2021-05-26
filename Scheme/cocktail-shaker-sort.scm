(define (check-sorted lst)
    (cond 
        ((null? lst) #t)
        ((null? (cdr lst)) #t)
        ((or (< (car lst) (cadr lst)) (= (car lst) (cadr lst))) (check-sorted (cdr lst)))
        (else #f))
)

(define (forward-sort lst)
    (cond 
        ((null? lst) lst)
        ((null? (cdr lst)) lst)
        ((< (car lst) (cadr lst)) (cons (car lst) (forward-sort (cdr lst))))
        (else 
            (cons (cadr lst) (forward-sort (cons (car lst) (cddr lst))))
		)
	)
)

(define (backward-sort lst)
    (cond 
        ((null? lst) lst)
        ((null? (cdr lst)) lst)
        ((> (car lst) (cadr lst)) (cons (car lst) (backward-sort (cdr lst))))
        (else 
            (cons (cadr lst) (backward-sort (cons (car lst) (cddr lst))))
		)
	)
)

(define (cocktail-sort lst)
    (cond 
        ((check-sorted lst) lst)
        (else 
            (cocktail-sort (reverse (backward-sort (reverse (forward-sort lst)))))
        )
    )
)

(cocktail-sort '(10 9 8 7 6 4 2 1)))