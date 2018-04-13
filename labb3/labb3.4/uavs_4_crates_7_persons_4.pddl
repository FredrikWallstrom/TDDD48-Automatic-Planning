(define (problem uavs_4_crates_5_persons_4)
(:domain lab31)
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


(at crate1 depot)
(at crate2 depot)
(at crate3 depot)
(at crate4 depot)
(at crate5 depot)
(at crate6 depot)
(at crate7 depot)

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
