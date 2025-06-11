;;
;; Exercise 3.4
;;
;; Modify the "make-account" procedure of exercise 3.3 by adding another local 
;; state variable so that, if an accout is accessed more than seven consecutive 
;; times with an incorrect password, it invokes the procedure "call-the-cops".
;;

;;
;; We make three modifications to the procedure:
;;
;;  (1) Add another local state variable to track incorrect password attempts;
;;  (2) Add the "call-the-cops" procedure;
;;  (3) Modify the else-branch of password check to count incorrect attempts;
;;
