(define (problem crates_4_persons_4)
	
  (:domain lab21)

  (:objects
    n0 n2 n3 n4 - num
    c1 c2 c3 c4 	- crate
    p1 p2 p3 p4      - person
    depot l1 l2 l3 l4 - location
    medicin 	- content
    food		- content
    h 			- helicopter
    carr - carrier
  )

  (:init
    (at c1 depot)
    (at c2 depot)
    (at c3 depot)
    (at c4 depot)
    (at p1 l1)
    (at p2 l2)
    (at p3 l3)
    (at p4 l4)
    (at h depot)
    (at carr depot)
    (next n0 n1) (next n1 n2) (next n2 n3) (next n3 n4)
    (crate-content c1 medicin)
    (crate-content c2 medicin)
    (crate-content c3 food)
    (crate-content c4 food)
    (helicopter-empty h)
  ) 

  (:goal
  	(and (person-got-help p1 medicin)
  	(person-got-help p2 food)
    (person-got-help p3 food)
    (person-got-help p4 medicin))
  )

)