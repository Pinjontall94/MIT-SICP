;;
;; Exercise 2.73
;;
;; Section 2.3.2 described a program that performs symbolic differentiation:
;;
;;  (define (deriv exp var)
;;   (cond ((number? exp) 0)
;;         ((variable? exp) (if (same-variable? exp var) 1 0))
;;         ((sum? exp)
;;          (make-sum (deriv (addend exp) var)
;;                    (deriv (augend exp) var)))
;;         ((product? exp)
;;          (make-sum
;;           (make-product (multiplier exp)
;;                         (deriv (multiplicand exp) var))
;;           (make-product (deriv (multiplier exp) var)
;;                         (multiplicand exp))))
;;         (else (error "Unknown expression type -- DERIV" exp))))
;;
;; We can regard this program as performing a dispatch on the type of the expression to be differentiated.
;; In this situation the ``type tag'' of the datum is the algebraic operator symbol (such as +) and the operation
;;  being performed is deriv. We can transform this program into data-directed style by rewriting the basic derivative 
;; procedure as
;;
;;  (define (deriv exp var)
;;   (cond ((number? exp) 0)
;;         ((variable? exp) (if (same-variable? exp var) 1 0))
;;         (else ((get 'deriv (operator exp)) (operands exp) var))))
;;
;; (define (operator exp) (car exp))
;; (define (operands exp) (cdr exp))
;;
