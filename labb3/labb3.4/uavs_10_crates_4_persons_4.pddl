(define (problem uavs_20_crates_4_persons_4)
	
  (:domain lab34)

  (:objects
    c1 c2 c3 c4 - crate
    p1 p2 p3 p4 - person
    depot loc1 loc2 loc3 loc4 - location
    medicin - content
    food - content
    h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 - helicopter
    h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 - helicopter
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
    (at h5 depot)
    (at h6 depot)
    (at h7 depot)
    (at h8 depot)
    (at h9 depot)
    (at h10 depot)
    (at h11 depot)
    (at h12 depot)
    (at h13 depot)
    (at h14 depot)
    (at h15 depot)
    (at h16 depot)
    (at h17 depot)
    (at h18 depot)
    (at h19 depot)
    (at h20 depot)
    
    (crate-content c1 medicin)
    (crate-content c2 medicin)
    (crate-content c3 food)
    (crate-content c4 food)
    
    (helicopter-empty h1)
    (helicopter-empty h2)
    (helicopter-empty h3)
    (helicopter-empty h4)
    (helicopter-empty h5)
    (helicopter-empty h6)
    (helicopter-empty h7)
    (helicopter-empty h8)
    (helicopter-empty h9)
    (helicopter-empty h10)
    (helicopter-empty h11)
    (helicopter-empty h12)
    (helicopter-empty h13)
    (helicopter-empty h14)
    (helicopter-empty h15)
    (helicopter-empty h16)
    (helicopter-empty h17)
    (helicopter-empty h18)
    (helicopter-empty h19)
    (helicopter-empty h20)
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
	     (at h5 depot)
	     (at h6 depot)
	     (at h7 depot)
	     (at h8 depot)
	     (at h9 depot)
	     (at h10 depot)
	     (at h11 depot)
	     (at h12 depot)
	     (at h13 depot)
	     (at h14 depot)
	     (at h15 depot)
	     (at h16 depot)
	     (at h17 depot)
	     (at h18 depot)
	     (at h19 depot)
	     (at h20 depot)
	     )
  )
)

