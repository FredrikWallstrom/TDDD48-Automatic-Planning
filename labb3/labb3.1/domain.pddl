(define (domain lab31)

  (:requirements 
    :typing
    :strips
    :equality
  )

  (:types
    thing location content - object
    crate person helicopter - thing
  )

  (:predicates	
    (at ?t - thing ?l - location) ; Thing t at location l.
    (crate-content ?c - crate ?co - content) ; Create c has content co.	
    (person-got-help ?p - person ?co - content) ; Person p has a crate with content co.
    (helicopter-carries ?h - helicopter ?c - crate) ; Helicopter h carries crate c.
    (helicopter-empty ?h - helicopter) ; Helicopter h is empty.                    
  )
  
  ;; Action pick-up-crate will pick up a crate at specific location.
  ;; Precondition is that the helicopter and the crate need to be at that location.
  ;; Also the helicopter needs to be empty, can only carry one crate.
  ;; Effects is that the crate will not be at the location.
  (:action pick-up-crate
    :parameters (?h - helicopter ?c - crate ?l - location)
    :precondition (and (at ?h ?l)
		       (at ?c ?l)
		       (helicopter-empty ?h)
		       )
    :effect (and (not(at ?c ?l))
		 (helicopter-carries ?h ?c)
		 (not(helicopter-empty ?h))
		 ) 
  )

  ;; Action fly will transport the helicopter from location to another location.
  ;; Precondition is that the helicopter need to be at from location.
  ;; Effect is that the helicopter end up in location to and leave location from.
  (:action fly
    :parameters (?h - helicopter ?from - location ?to - location) 
    :precondition (at ?h ?from)
    :effect (and (not(at ?h ?from)) 
		 (at ?h ?to)
            )
  )

  ;; Action deliver-crate will deliver a crate to a person.
  ;; Precondition is that the helicopter and person need to be at the location.
  ;; Also the helicopter need to carry the crate and the crate need to have right content.
  ;; Effect is that the person get help, the helicopter is not carrying anything anymore, it is empty.
  (:action deliver-crate
    :parameters (?h - helicopter ?c - crate ?co - content ?l - location ?p - person)
    :precondition (and (at ?h ?l) 
		       (at ?p ?l)
		       (crate-content ?c ?co)              
		       (helicopter-carries ?h ?c)
		       )
    :effect (and (person-got-help ?p ?co)
		 (not(helicopter-carries ?h ?c))
		 (helicopter-empty ?h)
		 )
  )
)
