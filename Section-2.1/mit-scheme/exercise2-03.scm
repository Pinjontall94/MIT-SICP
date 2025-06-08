;;
;; Exercise 2.3
;;
;; Implement a representation for rectangles in a plane. (Hint: You may want to make use 
;; of exercise 2.2). In terms of your constructors and selectors, create procedures that
;; compute the perimeter and the area of a given example. Now implement a different
;; representation for rectangles. Can you design your system with suitable abstraction
;; barriers, so that the same perimeter and area procedures will work using either representation?
;;

;;
;; Two methods for representing rectangles in a plane are as follows:
;;
;; (1) Specify the upper-left-most point, and the lower-right-most point;
;; (2) Specify the upper-left-most point, and the width and height of the rectangle;
;;
;; Each representation will naturally have a different constructor.
;;
;; For both representation, let's specify the following selectors: "upper-left" and "lower-right"
;; which return the respective points of the rectangle, as well as "width" and "height", for obtaining
;; the width and height of the rectangle.
;;
;; We should be able to define the "perimeter" and "area" of the rectangle in a "representation-independent"
;; way by working only in terms of the width and height selectors.
;;
