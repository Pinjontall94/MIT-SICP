;;
;; Exercise 1.15
;;
;; The sine of an angle (specified in radians) can be computed by making use of the approximation
;; sin x = x for small x, and the trigonometric identity:
;;
;;  sin x = 3 * sin(x/3) - 4 * sin^3(x/3)
;;
;; to reduce the size of the argument to sin. 
;;
;; We will set the "sufficiently small" tolerance in this example to be 0.1 
;; 
;; Use these ideas to implement a sine procedure.
;;
