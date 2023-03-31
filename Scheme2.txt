(define (dbl_atm atom list1)
  (cond ((null? list1) '())
    ((not (pair? (car list1)))
    (if (equal? atom (car list1))
        (cons (car list1) (cons (car list1)(dbl_atm atom (cdr list1))))
        (cons (car list1) (dbl_atm atom (cdr list1)))))
    (else
        (cons (dbl_atm atom (car list1))(dbl_atm atom (cdr list1))))
))

(print (dbl_atm 'a '(a (b c a (a d)))))