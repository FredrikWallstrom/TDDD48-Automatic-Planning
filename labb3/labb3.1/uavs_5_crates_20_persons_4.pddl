(define (problem uavs_5_crates_20_persons_4)
(:domain lab31)
(:objects
	uav1 - helicopter
	uav2 - helicopter
	uav3 - helicopter
	uav4 - helicopter
	uav5 - helicopter
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
	loc11 - location
	loc12 - location
	loc13 - location
	loc14 - location
	loc15 - location
	loc16 - location
	loc17 - location
	loc18 - location
	loc19 - location
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
(at uav5 depot)

(helicopter-empty uav1)
(helicopter-empty uav2)
(helicopter-empty uav3)
(helicopter-empty uav4)
(helicopter-empty uav5)

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
(crate-content crate11 food)
(crate-content crate12 medicine)
(crate-content crate13 food)
(crate-content crate14 food)
(crate-content crate15 medicine)
(crate-content crate16 medicine)
(crate-content crate17 medicine)
(crate-content crate18 medicine)
(crate-content crate19 food)
(crate-content crate20 medicine)

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

(at person1 loc8)
(at person2 loc9)
(at person3 loc10)
(at person4 loc11)
(at person5 loc12)
)

(:goal (and

(at uav1 depot)
(at uav2 depot)
(at uav3 depot)
(at uav4 depot)
(at uav5 depot)
(person-got-help person2 food)
(person-got-help person2 medicine)
(person-got-help person4 food)
(person-got-help person4 medicine)
	))
)
