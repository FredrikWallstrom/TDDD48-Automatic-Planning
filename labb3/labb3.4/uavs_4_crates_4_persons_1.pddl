(define (problem uavs_4_crates_4_persons_1)
	
  (:domain lab31)

  (:objects
    c1 c2 c3 c4 - crate
    p1 - person
    depot loc1 loc2 loc3 loc4 - location
    medicine - content
    food - content
    h1 h2 h3 h4 - helicopter
  )

  (:init
    (at c1 depot)
    (at c2 depot)
    (at c3 depot)
    (at c4 depot)
    
    (at p1 loc1)
    
    (at h1 depot)
    (at h2 depot)
    (at h3 depot)
    (at h4 depot)
    
    (crate-content c1 medicine)
    (crate-content c2 medicine)
    (crate-content c3 food)
    (crate-content c4 food)
    
    (helicopter-empty h1)
    (helicopter-empty h2)
    (helicopter-empty h3)
    (helicopter-empty h4)
  ) 

  (:goal
  	(and (person-got-help p1 medicine)
	     (at h1 depot)
	     (at h2 depot)
	     (at h3 depot)
	     (at h4 depot)
	     )
  )
)

