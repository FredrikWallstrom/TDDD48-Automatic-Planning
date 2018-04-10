(define (domain lab22)

  (:requirements 
    :typing
    :strips
    :action-costs
    :equality
  )

  (:types
    num
    thing location content - object
    crate person helicopter carrier - thing
  )

  (:predicates	
    (next ?numA ?numB - num) ; Representing numbers in the carriers.
    (carrier-carries ?c - carrier ?n - num) ; How many crates the carrier c is carrying.
    (at ?t - thing ?l - location) ; Thing t at location l.
    (crate-content ?c - crate ?co - content) ; Create c has content co.	
    (person-got-help ?p - person ?co - content) ; Person p has a crate with content co.
    (helicopter-carries ?h - helicopter ?c - crate) ; Helicopter h carries crate c.
    (helicopter-empty ?h - helicopter) ; Helicopter h is empty.                    
  )

  ;; Functions that represent the total cost of every action taken and the flight cost between two destinations.
  (:functions (total-cost) - number
              (fly-cost ?from ?to - location) - number
  )

  ;; Action load-crate-on-carrier will place a crate from the helicopter to a carrier.
  ;; Precondition is that the helicopter need to carry the crate.
  ;; The helicopter and the carrier also need to be at same location.
  ;; Effects is that the crate will be on the carrier.
  (:action load-crate-on-carrier
    :parameters (?h - helicopter ?crate - crate ?c - carrier ?from - num ?to - num ?l - location)
    :precondition (and (helicopter-carries ?h ?crate)
                  (carrier-carries ?c ?from)
                  (next ?from ?to)
                  (at ?c ?l)
                  (at ?h ?l)
		  )
    :effect (and (helicopter-empty ?h)
                 (not(helicopter-carries ?h ?crate))
                 (not(carrier-carries ?c ?from))
                 (carrier-carries ?c ?to)
                 (increase (total-cost) 5)
                 )
  )

  ;; Action fly-carrier will fly the carrier from one location to another location.
  ;; Precondition is that the helicopter and the carrier need to be at the starting location.
  ;; Effects is that the carrier will be att the location to.
  (:action fly-carrier
    :parameters (?h - helicopter ?c - carrier ?from - location ?to - location) 
    :precondition (and (at ?h ?from)
                  (at ?c ?from)
		  (helicopter-empty ?h)
		  )
    :effect (and (not(at ?h ?from)) 
            (at ?h ?to)
            (not(at ?c ?from))
            (at ?c ?to)
            (increase (total-cost) (fly-cost ?from ?to))
            )
  )

  ;; Action take-crate-from-carrier will unload a crate from the carrier to the helicopter.
  ;; Precondition is that the helicopter need to be empty.
  ;; The helicopter and the carrier also need to be at same location.
  ;; Effects is that the crate will be on the helicopter.
  (:action take-crate-from-carrier
    :parameters (?h - helicopter ?crate - crate ?c - carrier ?from - num ?to - num ?l - location)
    :precondition (and (helicopter-empty ?h)
                  (at ?c ?l)
                  (at ?h ?l)
                  (carrier-carries ?c ?to)
                  (next ?from ?to)
                  )
    :effect (and (not (carrier-carries ?c ?to)) 
                      (carrier-carries ?c ?from)
                      (helicopter-carries ?h ?crate)
                      (not (helicopter-empty ?h))
                      (increase (total-cost) 5)
		      )
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
		 (increase (total-cost) 5)
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
		 (increase (total-cost) (fly-cost ?from ?to))
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
		 (increase (total-cost) 5)
		 )
  )
)
