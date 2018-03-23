(define (problem two_persons_three_crates)
	
  (:domain lab1.1)

  (:objects
    c1 c2 c3 	- crate
    p1 p2       - person
    depot l1 l2 - location
    medicin 	- content
    food		- content
    h 			- helicopter
  )

  (:init
    (at c1 depot)
    (at c2 depot)
    (at c3 depot)
    (at p1 l1)
    (at p2 l2)
    (at h depot)
    (crate-content c1 medicin)
    (crate-content c2 medicin)
    (crate-content c3 food)
    (helicopter-empty h)
  ) 

  (:goal
  	(and (person-got-help p1 medicin)
  	(person-got-help p2 food))
  )

)