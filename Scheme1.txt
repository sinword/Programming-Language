(define (palindrome list1)
    (append list1 (reverse list1))
)
(print(palindrome '(a b c (b a (c d)))))