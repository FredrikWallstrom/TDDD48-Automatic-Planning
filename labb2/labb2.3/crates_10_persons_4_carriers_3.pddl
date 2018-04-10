(define (problem crates_10_persons_4_carriers_3)
(:domain lab23)
(:objects
	uav1 - helicopter
	depot - location
	loc1 - location
	loc2 - location
	loc3 - location
	loc4 - location
	loc5 - location
	loc6 - location
	loc7 - location
	loc8 - location
	loc9 - location
	loc10 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	crate7 - crate
	crate8 - crate
	crate9 - crate
	crate10 - crate
	food - content
	medicine - content
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	carrier1 - carrier
	carrier2 - carrier
	carrier3 - carrier
	n0 - num
	n1 - num
	n2 - num
	n3 - num
	n4 - num	
)
(:init

(at uav1 depot)
(helicopter-empty uav1)
(= (total-cost) 0)
(= (fly-cost depot depot) 1)
(= (fly-cost depot loc1) 30)
(= (fly-cost depot loc2) 125)
(= (fly-cost depot loc3) 184)
(= (fly-cost depot loc4) 108)
(= (fly-cost depot loc5) 12)
(= (fly-cost depot loc6) 124)
(= (fly-cost depot loc7) 195)
(= (fly-cost depot loc8) 141)
(= (fly-cost depot loc9) 276)
(= (fly-cost depot loc10) 158)
(= (fly-cost loc1 depot) 30)
(= (fly-cost loc1 loc1) 1)
(= (fly-cost loc1 loc2) 98)
(= (fly-cost loc1 loc3) 172)
(= (fly-cost loc1 loc4) 99)
(= (fly-cost loc1 loc5) 19)
(= (fly-cost loc1 loc6) 94)
(= (fly-cost loc1 loc7) 166)
(= (fly-cost loc1 loc8) 111)
(= (fly-cost loc1 loc9) 249)
(= (fly-cost loc1 loc10) 130)
(= (fly-cost loc2 depot) 125)
(= (fly-cost loc2 loc1) 98)
(= (fly-cost loc2 loc2) 1)
(= (fly-cost loc2 loc3) 204)
(= (fly-cost loc2 loc4) 155)
(= (fly-cost loc2 loc5) 115)
(= (fly-cost loc2 loc6) 40)
(= (fly-cost loc2 loc7) 103)
(= (fly-cost loc2 loc8) 47)
(= (fly-cost loc2 loc9) 196)
(= (fly-cost loc2 loc10) 34)
(= (fly-cost loc3 depot) 184)
(= (fly-cost loc3 loc1) 172)
(= (fly-cost loc3 loc2) 204)
(= (fly-cost loc3 loc3) 1)
(= (fly-cost loc3 loc4) 77)
(= (fly-cost loc3 loc5) 178)
(= (fly-cost loc3 loc6) 166)
(= (fly-cost loc3 loc7) 167)
(= (fly-cost loc3 loc8) 170)
(= (fly-cost loc3 loc9) 184)
(= (fly-cost loc3 loc10) 216)
(= (fly-cost loc4 depot) 108)
(= (fly-cost loc4 loc1) 99)
(= (fly-cost loc4 loc2) 155)
(= (fly-cost loc4 loc3) 77)
(= (fly-cost loc4 loc4) 1)
(= (fly-cost loc4 loc5) 102)
(= (fly-cost loc4 loc6) 124)
(= (fly-cost loc4 loc7) 160)
(= (fly-cost loc4 loc8) 134)
(= (fly-cost loc4 loc9) 213)
(= (fly-cost loc4 loc10) 176)
(= (fly-cost loc5 depot) 12)
(= (fly-cost loc5 loc1) 19)
(= (fly-cost loc5 loc2) 115)
(= (fly-cost loc5 loc3) 178)
(= (fly-cost loc5 loc4) 102)
(= (fly-cost loc5 loc5) 1)
(= (fly-cost loc5 loc6) 112)
(= (fly-cost loc5 loc7) 183)
(= (fly-cost loc5 loc8) 129)
(= (fly-cost loc5 loc9) 265)
(= (fly-cost loc5 loc10) 147)
(= (fly-cost loc6 depot) 124)
(= (fly-cost loc6 loc1) 94)
(= (fly-cost loc6 loc2) 40)
(= (fly-cost loc6 loc3) 166)
(= (fly-cost loc6 loc4) 124)
(= (fly-cost loc6 loc5) 112)
(= (fly-cost loc6 loc6) 1)
(= (fly-cost loc6 loc7) 76)
(= (fly-cost loc6 loc8) 18)
(= (fly-cost loc6 loc9) 167)
(= (fly-cost loc6 loc10) 53)
(= (fly-cost loc7 depot) 195)
(= (fly-cost loc7 loc1) 166)
(= (fly-cost loc7 loc2) 103)
(= (fly-cost loc7 loc3) 167)
(= (fly-cost loc7 loc4) 160)
(= (fly-cost loc7 loc5) 183)
(= (fly-cost loc7 loc6) 76)
(= (fly-cost loc7 loc7) 1)
(= (fly-cost loc7 loc8) 61)
(= (fly-cost loc7 loc9) 93)
(= (fly-cost loc7 loc10) 87)
(= (fly-cost loc8 depot) 141)
(= (fly-cost loc8 loc1) 111)
(= (fly-cost loc8 loc2) 47)
(= (fly-cost loc8 loc3) 170)
(= (fly-cost loc8 loc4) 134)
(= (fly-cost loc8 loc5) 129)
(= (fly-cost loc8 loc6) 18)
(= (fly-cost loc8 loc7) 61)
(= (fly-cost loc8 loc8) 1)
(= (fly-cost loc8 loc9) 153)
(= (fly-cost loc8 loc10) 47)
(= (fly-cost loc9 depot) 276)
(= (fly-cost loc9 loc1) 249)
(= (fly-cost loc9 loc2) 196)
(= (fly-cost loc9 loc3) 184)
(= (fly-cost loc9 loc4) 213)
(= (fly-cost loc9 loc5) 265)
(= (fly-cost loc9 loc6) 167)
(= (fly-cost loc9 loc7) 93)
(= (fly-cost loc9 loc8) 153)
(= (fly-cost loc9 loc9) 1)
(= (fly-cost loc9 loc10) 177)
(= (fly-cost loc10 depot) 158)
(= (fly-cost loc10 loc1) 130)
(= (fly-cost loc10 loc2) 34)
(= (fly-cost loc10 loc3) 216)
(= (fly-cost loc10 loc4) 176)
(= (fly-cost loc10 loc5) 147)
(= (fly-cost loc10 loc6) 53)
(= (fly-cost loc10 loc7) 87)
(= (fly-cost loc10 loc8) 47)
(= (fly-cost loc10 loc9) 177)
(= (fly-cost loc10 loc10) 1)

(crate-content crate1 food)
(crate-content crate2 food)
(crate-content crate3 food)
(crate-content crate4 food)
(crate-content crate5 medicine)
(crate-content crate6 medicine)
(crate-content crate7 food)
(crate-content crate8 food)
(crate-content crate9 medicine)
(crate-content crate10 food)

(at crate1 depot)
(at crate2 depot)
(at crate3 depot)
(at crate4 depot)
(at crate5 depot)
(at crate6 depot)
(at crate7 depot)
(at crate8 depot)
(at crate9 depot)
(at crate10 depot)

(at person1 loc5)
(at person2 loc6)
(at person3 loc7)
(at person4 loc8)
(at person5 loc9)

(at carrier1 depot)
(at carrier2 depot)
(at carrier3 depot)

(next n0 n1)
(next n1 n2) 
(next n2 n3) 
(next n3 n4)

(carrier-carries carrier1 n0)
(carrier-carries carrier2 n0)
(carrier-carries carrier3 n0)
)
(:goal (and

(at uav1 depot)
(person-got-help person2 food)
(person-got-help person2 medicine)
(person-got-help person4 food)
(person-got-help person4 medicine)
	))

(:metric minimize (total-cost))
)
