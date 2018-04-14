(define (problem uavs_4_crates_25_persons_4)
(:domain lab34)
(:objects
	uav1 - helicopter
	uav2 - helicopter
	uav3 - helicopter
	uav4 - helicopter
	depot - location
	loc1 - location
	loc2 - location
	loc3 - location
	loc4 - location
	loc5 - location
	
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
	crate11 - crate
	crate12 - crate
	crate13 - crate
	crate14 - crate
	crate15 - crate
	crate16 - crate
	crate17 - crate
	crate18 - crate
	crate19 - crate
	crate20 - crate
	crate21 - crate
	crate22 - crate
	crate23 - crate
	crate24 - crate
	crate25 - crate
	
	food - content
	medicine - content
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person	
)
(:init

(at uav1 depot)
(at uav2 depot)
(at uav3 depot)
(at uav4 depot)

(helicopter-empty uav1)
(helicopter-empty uav2)
(helicopter-empty uav3)
(helicopter-empty uav4)

(crate-content crate1 food)
(crate-content crate2 food)
(crate-content crate3 food)
(crate-content crate4 medicine)
(crate-content crate5 medicine)
(crate-content crate6 medicine)
(crate-content crate7 medicine)
(crate-content crate8 food)
(crate-content crate9 food)
(crate-content crate10 food)
(crate-content crate11 medicine)
(crate-content crate12 medicine)
(crate-content crate13 medicine)
(crate-content crate14 medicine)
(crate-content crate15 food)
(crate-content crate16 food)
(crate-content crate17 food)
(crate-content crate18 medicine)
(crate-content crate19 medicine)
(crate-content crate20 medicine)
(crate-content crate21 medicine)
(crate-content crate22 food)
(crate-content crate23 food)
(crate-content crate24 food)
(crate-content crate25 medicine)

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
(at crate11 depot)
(at crate12 depot)
(at crate13 depot)
(at crate14 depot)
(at crate15 depot)
(at crate16 depot)
(at crate17 depot)
(at crate18 depot)
(at crate19 depot)
(at crate20 depot)
(at crate21 depot)
(at crate22 depot)
(at crate23 depot)
(at crate24 depot)
(at crate25 depot)

(at person1 loc1)
(at person2 loc2)
(at person3 loc3)
(at person4 loc3)
(at person5 loc4)
)

(:goal (and

(at uav1 depot)
(at uav2 depot)
(at uav3 depot)
(at uav4 depot)

(person-got-help person2 food)
(person-got-help person2 medicine)
(person-got-help person4 food)
(person-got-help person4 medicine)
	))
)
