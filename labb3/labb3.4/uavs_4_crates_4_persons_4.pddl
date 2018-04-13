(define (problem uavs_4_crates_4_persons_4)
	
  (:domain lab31)

  (:objects
    c1 c2 c3 c4 - crate
    p1 p2 p3 p4 - person
    depot loc1 loc2 loc3 loc4 - location
    medicin - content
    food - content
    h1 h2 h3 h4 - helicopter
  )

  (:init
    (at c1 depot)
    (at c2 depot)
    (at c3 depot)
    (at c4 depot)
    (at p1 loc1)
    (at p2 loc2)
    (at p3 loc3)
    (at p4 loc4)
    (at h1 depot)
    (at h2 depot)
    (at h3 depot)
    (at h4 depot)
    (crate-content c1 medicin)
    (crate-content c2 medicin)
    (crate-content c3 food)
    (crate-content c4 food)
    (helicopter-empty h1)
    (helicopter-empty h2)
    (helicopter-empty h3)
    (helicopter-empty h4)
  ) 

  (:goal
  	(and (person-got-help p1 medicin)
	     (person-got-help p2 food)
	     (person-got-help p3 food)
	     (person-got-help p4 medicin)
	     (at h1 depot)
	     (at h2 depot)
	     (at h3 depot)
	     (at h4 depot)
	     )
  )
)

