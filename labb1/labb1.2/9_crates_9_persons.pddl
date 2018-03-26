(define (problem 9_crates_9_persons)
	
  (:domain lab1.2)

  (:objects
    c1 c2 c3 c4 c5 c6 c7 c8 c9 	- crate
    p1 p2 p3 p4 p5 p6 p7 p8 p9       - person
    depot l1 l2 - location
    medicin 	- content
    food		- content
    h 			- helicopter
  )

  (:init
    (at c1 depot)
    (at c2 depot)
    (at c3 depot)
    (at c4 depot)
    (at c5 depot)
    (at c6 depot)
    (at c7 depot)
    (at c8 depot)
    (at c9 depot)
    (at p1 l1)
    (at p2 l2)
    (at p3 l1)
    (at p4 l2)
    (at p5 l1)
    (at p6 l2)
    (at p7 l1)
    (at p8 l2)
    (at p9 l1)
    (at h depot)
    (crate-content c1 medicin)
    (crate-content c2 medicin)
    (crate-content c3 food)
    (crate-content c4 medicin)
    (crate-content c5 medicin)
    (crate-content c6 food)
    (crate-content c7 medicin)
    (crate-content c8 medicin)
    (crate-content c9 food)
    (helicopter-empty h)
  ) 

  (:goal
  	(and (person-got-help p1 medicin)
  	(person-got-help p2 medicin)
    (person-got-help p3 medicin)
    (person-got-help p4 food)
    (person-got-help p5 food)
    (person-got-help p6 food))
  )

)