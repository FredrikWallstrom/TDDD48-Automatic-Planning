(define (problem crates_4_persons_4)
	
  (:domain lab23)

  (:objects
    n0 n1 n2 n3 n4 - num
    c1 c2 c3 c4 - crate
    p1 p2 p3 p4 - person
    depot loc1 loc2 loc3 loc4 - location
    medicin - content
    food - content
    h - helicopter
    carr - carrier
  )

  (:init
    (= (total-cost) 0)
    (= (fly-cost depot loc1) 50) 
    (= (fly-cost depot depot) 0) 
    (= (fly-cost depot loc2) 50) 
    (= (fly-cost depot loc3) 50) 
    (= (fly-cost depot loc4) 50) 
    (= (fly-cost loc1 depot) 50) 
    (= (fly-cost loc2 depot) 50) 
    (= (fly-cost loc3 depot) 50) 
    (= (fly-cost loc4 depot) 50)
    (= (fly-cost loc1 loc1) 0) 
    (= (fly-cost loc1 loc2) 10)
    (= (fly-cost loc2 loc1) 10)
    (= (fly-cost loc1 loc3) 20) 
    (= (fly-cost loc3 loc1) 20)
    (= (fly-cost loc1 loc4) 30)
    (= (fly-cost loc4 loc1) 30)
    (= (fly-cost loc2 loc2) 0) 
    (= (fly-cost loc2 loc3) 10)
    (= (fly-cost loc3 loc2) 10)
    (= (fly-cost loc2 loc4) 20)
    (= (fly-cost loc4 loc2) 20)
    (= (fly-cost loc3 loc3) 0)
    (= (fly-cost loc3 loc4) 10)
    (= (fly-cost loc4 loc3) 10)
    (= (fly-cost loc4 loc4) 0)
    (at c1 depot)
    (at c2 depot)
    (at c3 depot)
    (at c4 depot)
    (at p1 loc1)
    (at p2 loc2)
    (at p3 loc3)
    (at p4 loc4)
    (at h depot)
    (at carr depot)
    (next n0 n1)
    (next n1 n2) 
    (next n2 n3) 
    (next n3 n4)
    (carrier-carries carr n0)
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
	     (person-got-help p4 medicin)
	     (at h depot)
	     )
  )

  (:metric minimize (total-cost))

)

