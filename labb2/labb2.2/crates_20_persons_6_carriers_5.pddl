(define (problem crates_20_persons_6_carriers_5)
	
  (:domain lab22)

  (:objects
    n0 n1 n2 n3 n4 - num
    c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20 	- crate
    p1 p2 p3 p4 p5 p6      - person
    depot loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 loc9 loc10 - location
    medicin 	- content
    food		- content
    h 			- helicopter
    carr1 carr2 carr3 carr4 carr5 - carrier
  )

  (:init
    (= (total-cost) 0)
	
    (= (fly-cost loc1 loc1) 0) 
    (= (fly-cost loc1 loc2) 10)
    (= (fly-cost loc1 loc3) 20) 
    (= (fly-cost loc1 loc4) 30)
    (= (fly-cost loc1 loc5) 40) 
    (= (fly-cost loc1 loc6) 50)
    (= (fly-cost loc1 loc7) 60)
    (= (fly-cost loc1 loc8) 70)
    (= (fly-cost loc1 loc9) 80)
    (= (fly-cost loc1 loc10) 90)
    (= (fly-cost loc2 loc2) 0) 
    (= (fly-cost loc2 loc3) 10)
    (= (fly-cost loc2 loc4) 20) 
    (= (fly-cost loc2 loc5) 30)
    (= (fly-cost loc2 loc6) 40) 
    (= (fly-cost loc2 loc7) 50)
    (= (fly-cost loc2 loc8) 60)
    (= (fly-cost loc2 loc9) 70)
    (= (fly-cost loc2 loc10) 80)
    (= (fly-cost loc3 loc3) 0)
    (= (fly-cost loc3 loc4) 10) 
    (= (fly-cost loc3 loc5) 20)
    (= (fly-cost loc3 loc6) 30) 
    (= (fly-cost loc3 loc7) 40)
    (= (fly-cost loc3 loc8) 50) 
    (= (fly-cost loc3 loc9) 60)
    (= (fly-cost loc3 loc10) 70)
    (= (fly-cost loc4 loc4) 0)
    (= (fly-cost loc4 loc5) 10)
    (= (fly-cost loc4 loc6) 20)
    (= (fly-cost loc4 loc7) 30) 
    (= (fly-cost loc4 loc8) 40)
    (= (fly-cost loc4 loc9) 50) 
    (= (fly-cost loc4 loc10) 60)
    (= (fly-cost loc5 loc5) 0) 
    (= (fly-cost loc5 loc6) 10)
    (= (fly-cost loc5 loc7) 20)
    (= (fly-cost loc5 loc8) 30)
    (= (fly-cost loc5 loc9) 40)
    (= (fly-cost loc5 loc10) 50)
    (= (fly-cost loc6 loc6) 0) 
    (= (fly-cost loc6 loc7) 10)
    (= (fly-cost loc6 loc8) 20)
    (= (fly-cost loc6 loc9) 30)
    (= (fly-cost loc6 loc10) 40)
    (= (fly-cost loc7 loc7) 0)
    (= (fly-cost loc7 loc8) 10) 
    (= (fly-cost loc7 loc9) 20)
    (= (fly-cost loc7 loc10) 30)
    (= (fly-cost loc8 loc8) 0)
    (= (fly-cost loc8 loc9) 10)
    (= (fly-cost loc8 loc10) 20)
    (= (fly-cost loc9 loc9) 0) 
    (= (fly-cost loc9 loc10) 10)
    (= (fly-cost loc10 loc10) 0)
    (at c1 depot)
    (at c2 depot)
    (at c3 depot)
    (at c4 depot)
 	(at c5 depot)
    (at c6 depot)
    (at c7 depot)
    (at c8 depot)
 	(at c9 depot)
    (at c10 depot)
    (at c11 depot)
    (at c12 depot)
 	(at c13 depot)
    (at c14 depot)
    (at c15 depot)
    (at c16 depot)
 	(at c17 depot)
    (at c18 depot)
    (at c19 depot)
    (at c20 depot)
    (at p1 l1)
    (at p2 l2)
    (at p3 l3)
    (at p4 l4)
    (at p5 l3)
    (at p6 l10)
    (at h depot)
    (at carr1 depot)
	(at carr2 depot)
	(at carr3 depot)
	(at carr4 depot)
	(at carr5 depot)
	(next n0 n1)
    (next n1 n2) 
	(next n2 n3) 
	(next n3 n4)
	(carrier-carries carr1 n0)
	(carrier-carries carr2 n0)
	(carrier-carries carr3 n0)
	(carrier-carries carr4 n0)
	(carrier-carries carr5 n0)
  	(crate-content c1 food)
    (crate-content c2 food)
    (crate-content c3 food)
    (crate-content c4 food)
 	(crate-content c5 food)
    (crate-content c6 food)
    (crate-content c7 food)
    (crate-content c8 food)
 	(crate-content c9 food)
    (crate-content c10 medicin)
    (crate-content c11 medicin)
    (crate-content c12 medicin)
 	(crate-content c13 medicin)
    (crate-content c14 medicin)
    (crate-content c15 medicin)
    (crate-content c16 medicin)
 	(crate-content c17 medicin)
    (crate-content c18 medicin)
    (crate-content c19 medicin)
    (crate-content c20 medicin)
    (helicopter-empty h)
  ) 

  (:goal
  	(and (person-got-help p1 medicin)
  	(person-got-help p2 food)
	(person-got-help p3 food)
	(person-got-help p4 medicin)
	(person-got-help p5 food)
	(person-got-help p6 medicin)
	(at h depot))
  )

  (:metric minimize (total-cost))

)
