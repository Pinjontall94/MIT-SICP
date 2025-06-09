;;
;; Exercise 2.43
;;
;; Louis Reasoner is having a terrible time doing exercise 2.42. His "queens" procedure seems to work, 
;; but it runs extremely slowly. (Louis never manages to wait long enough for it to solve even the 
;; 6x6 case). When Louis asks Eva Lu Ator for help, she points out that he has interchanged the order
;; of the nested mappings in the "flatmap", writing it as:
;; 
;;  (flatmap
;;   (lambda (new-row)
;;    (map (lambda (rest-of-queens)
;;          (adjoin-position new-row k rest-of-queens))
;;         (queen-cols (- k 1))))
;;   (enumerate-interval 1 board-size))          
;;      
;; Explain why this interchange makes the program run slowly. Estimate how long it will take Louis'
;; program to solve the 8-queens puzzle, assuming that the program in Exercise 2.42 solves the puzzle
;; in time T.
;;
