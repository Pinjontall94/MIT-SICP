;;
;; Exercise 2.90
;;
;; Suppose we want to have a polynomial sys- tem that is efficient for both
;; sparse and dense polynomials. One way to do this is to allow both kinds of
;; term-list repre- sentations in our system. e situation is analogous to the
;; complex-number example of Section 2.4, where we allowed both rectangular and
;; polar representations. To do this we must distinguish different types of
;; term lists and make the operations on term lists generic. Redesign the
;; polynomial system to implement this generalization. is is a major ef- fort,
;; not a local change.
;;
