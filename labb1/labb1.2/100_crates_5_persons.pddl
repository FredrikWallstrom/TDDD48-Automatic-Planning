(define (problem alot_bigger_problem)
(:domain lab1.2)
(:objects
	h - helicopter
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
	loc20 - location
	loc21 - location
	loc22 - location
	loc23 - location
	loc24 - location
	loc25 - location
	loc26 - location
	loc27 - location
	loc28 - location
	loc29 - location
	loc30 - location
	loc31 - location
	loc32 - location
	loc33 - location
	loc34 - location
	loc35 - location
	loc36 - location
	loc37 - location
	loc38 - location
	loc39 - location
	loc40 - location
	loc41 - location
	loc42 - location
	loc43 - location
	loc44 - location
	loc45 - location
	loc46 - location
	loc47 - location
	loc48 - location
	loc49 - location
	loc50 - location
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
	crate26 - crate
	crate27 - crate
	crate28 - crate
	crate29 - crate
	crate30 - crate
	crate31 - crate
	crate32 - crate
	crate33 - crate
	crate34 - crate
	crate35 - crate
	crate36 - crate
	crate37 - crate
	crate38 - crate
	crate39 - crate
	crate40 - crate
	crate41 - crate
	crate42 - crate
	crate43 - crate
	crate44 - crate
	crate45 - crate
	crate46 - crate
	crate47 - crate
	crate48 - crate
	crate49 - crate
	crate50 - crate
	crate51 - crate
	crate52 - crate
	crate53 - crate
	crate54 - crate
	crate55 - crate
	crate56 - crate
	crate57 - crate
	crate58 - crate
	crate59 - crate
	crate60 - crate
	crate61 - crate
	crate62 - crate
	crate63 - crate
	crate64 - crate
	crate65 - crate
	crate66 - crate
	crate67 - crate
	crate68 - crate
	crate69 - crate
	crate70 - crate
	crate71 - crate
	crate72 - crate
	crate73 - crate
	crate74 - crate
	crate75 - crate
	crate76 - crate
	crate77 - crate
	crate78 - crate
	crate79 - crate
	crate80 - crate
	crate81 - crate
	crate82 - crate
	crate83 - crate
	crate84 - crate
	crate85 - crate
	crate86 - crate
	crate87 - crate
	crate88 - crate
	crate89 - crate
	crate90 - crate
	crate91 - crate
	crate92 - crate
	crate93 - crate
	crate94 - crate
	crate95 - crate
	crate96 - crate
	crate97 - crate
	crate98 - crate
	crate99 - crate
	crate100 - crate
	crate101 - crate
	food - content
	medicin - content
	p1 - person
	p2 - person
	p3 - person
	p4 - person
	p5 - person
)
(:init
	(at h depot)
	(helicopter-empty h)
	(at p1 loc19)
	(at p2 loc49)
	(at p3 loc50)
	(at p4 loc19)
	(at p5 loc49)
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
	(at crate26 depot)
	(at crate27 depot)
	(at crate28 depot)
	(at crate29 depot)
	(at crate30 depot)
	(at crate31 depot)
	(at crate32 depot)
	(at crate33 depot)
	(at crate34 depot)
	(at crate35 depot)
	(at crate36 depot)
	(at crate37 depot)
	(at crate38 depot)
	(at crate39 depot)
	(at crate40 depot)
	(at crate41 depot)
	(at crate42 depot)
	(at crate43 depot)
	(at crate44 depot)
	(at crate45 depot)
	(at crate46 depot)
	(at crate47 depot)
	(at crate48 depot)
	(at crate49 depot)
	(at crate50 depot)
	(at crate51 depot)
	(at crate52 depot)
	(at crate53 depot)
	(at crate54 depot)
	(at crate55 depot)
	(at crate56 depot)
	(at crate57 depot)
	(at crate58 depot)
	(at crate59 depot)
	(at crate60 depot)
	(at crate61 depot)
	(at crate62 depot)
	(at crate63 depot)
	(at crate64 depot)
	(at crate65 depot)
	(at crate66 depot)
	(at crate67 depot)
	(at crate68 depot)
	(at crate69 depot)
	(at crate70 depot)
	(at crate71 depot)
	(at crate72 depot)
	(at crate73 depot)
	(at crate74 depot)
	(at crate75 depot)
	(at crate76 depot)
	(at crate77 depot)
	(at crate78 depot)
	(at crate79 depot)
	(at crate80 depot)
	(at crate81 depot)
	(at crate82 depot)
	(at crate83 depot)
	(at crate84 depot)
	(at crate85 depot)
	(at crate86 depot)
	(at crate87 depot)
	(at crate88 depot)
	(at crate89 depot)
	(at crate90 depot)
	(at crate91 depot)
	(at crate92 depot)
	(at crate93 depot)
	(at crate94 depot)
	(at crate95 depot)
	(at crate96 depot)
	(at crate97 depot)
	(at crate98 depot)
	(at crate99 depot)
	(at crate100 depot)
	(at crate101 depot)
	(crate-content crate1 medicin)
	(crate-content crate2 medicin)
	(crate-content crate3 medicin)
	(crate-content crate4 medicin)
	(crate-content crate5 medicin)
	(crate-content crate6 medicin)
	(crate-content crate7 medicin)
	(crate-content crate8 medicin)
	(crate-content crate9 medicin)
	(crate-content crate10 food)
	(crate-content crate11 food)
	(crate-content crate12 food)
	(crate-content crate13 food)
	(crate-content crate14 food)
	(crate-content crate15 food)
	(crate-content crate16 food)
	(crate-content crate17 food)
	(crate-content crate18 food)
	(crate-content crate19 food)
	(crate-content crate20 food)
	(crate-content crate21 food)
	(crate-content crate22 food)
	(crate-content crate23 food)
	(crate-content crate24 food)
	(crate-content crate25 food)
	(crate-content crate26 food)
	(crate-content crate27 food)
	(crate-content crate28 food)
	(crate-content crate29 food)
	(crate-content crate30 food)
	(crate-content crate31 food)
	(crate-content crate32 food)
	(crate-content crate33 food)
	(crate-content crate34 food)
	(crate-content crate35 food)
	(crate-content crate36 food)
	(crate-content crate37 food)
	(crate-content crate38 food)
	(crate-content crate39 food)
	(crate-content crate40 food)
	(crate-content crate41 food)
	(crate-content crate42 food)
	(crate-content crate43 food)
	(crate-content crate44 food)
	(crate-content crate45 food)
	(crate-content crate46 food)
	(crate-content crate47 food)
	(crate-content crate48 food)
	(crate-content crate49 food)
	(crate-content crate50 food)
	(crate-content crate51 food)
	(crate-content crate52 food)
	(crate-content crate53 food)
	(crate-content crate54 food)
	(crate-content crate55 food)
	(crate-content crate56 food)
	(crate-content crate57 food)
	(crate-content crate58 food)
	(crate-content crate59 food)
	(crate-content crate60 food)
	(crate-content crate61 food)
	(crate-content crate62 food)
	(crate-content crate63 food)
	(crate-content crate64 food)
	(crate-content crate65 food)
	(crate-content crate66 food)
	(crate-content crate67 food)
	(crate-content crate68 food)
	(crate-content crate69 food)
	(crate-content crate70 food)
	(crate-content crate71 food)
	(crate-content crate72 food)
	(crate-content crate73 food)
	(crate-content crate74 food)
	(crate-content crate75 food)
	(crate-content crate76 food)
	(crate-content crate77 food)
	(crate-content crate78 food)
	(crate-content crate79 food)
	(crate-content crate80 food)
	(crate-content crate81 food)
	(crate-content crate82 food)
	(crate-content crate83 food)
	(crate-content crate84 food)
	(crate-content crate85 food)
	(crate-content crate86 food)
	(crate-content crate87 food)
	(crate-content crate88 food)
	(crate-content crate89 food)
	(crate-content crate90 food)
	(crate-content crate91 food)
	(crate-content crate92 food)
	(crate-content crate93 food)
	(crate-content crate94 food)
	(crate-content crate95 food)
	(crate-content crate96 food)
	(crate-content crate97 food)
	(crate-content crate98 food)
	(crate-content crate99 food)
	(crate-content crate100 food)
	(crate-content crate101 food)
)
(:goal (and (at h depot)
	(person-got-help p1 medicin)
    (person-got-help p2 medicin)
    (person-got-help p3 food)
    (person-got-help p4 medicin)
    (person-got-help p5 medicin)
	))
)