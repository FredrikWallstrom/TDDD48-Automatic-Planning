(define (problem single_person_single_crate)
	
  (:domain lab1.1)

  (:objects
    c 			- crate
    p 			- person
    depot l1 	- location
    medicin 	- content
    h 			- helicopter
  )

  (:init
    (at c depot)
    (at p l1)
    (at h depot)
    (crate-content c medicin)
    (helicopter-empty h)
  ) 

  (:goal
  	(person-got-help p medicin)
  )

)