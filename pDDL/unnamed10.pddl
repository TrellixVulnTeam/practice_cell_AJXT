 (:action 
    move-up
    :parameters (?omf - agent)
    :precondition ()
    :effect (forall (?x ?y ?yn - position)
                    (when 
                      (and (at ?omf ?x ?y)
                           (dec ?y ?yn)
                           (not (block ?x ?yn)))
                      (and (not (at ?omf ?x ?y))
                           (at ?omf ?x ?yn))
                      )
                    )
    )

  (:action 
    move-down
    :parameters (?omf - agent)
    :precondition ()
    :effect (forall (?x ?y ?yn - position)
                    (when 
                      (and (at ?omf ?x ?y)
                           (inc ?y ?yn)
                           (not (block ?x ?yn)))
                      (and (not (at ?omf ?x ?y))
                           (at ?omf ?x ?yn))
                      )
                    )
    )

  (:action 
    move-right
    :parameters (?omf - agent)
    :precondition ()
    :effect (forall (?x ?y ?xn - position)
                    (when 
                      (and (at ?omf ?x ?y)
                           (inc ?x ?xn)
                           (not (block ?xn ?y)))
                      (and (not (at ?omf ?x ?y))
                           (at ?omf ?xn ?y))
                      )
                    )
    )

  (:action 
    move-left
    :parameters (?omf - agent)
    :precondition ()
    :effect (forall (?x ?y ?xn - position)
                    (when 
                      (and (at ?omf ?x ?y)
                           (dec ?x ?xn)
                           (not (block ?xn ?y)))
                      (and (not (at ?omf ?x ?y))
                           (at ?omf ?xn ?y))
                      )
                    )
    )
  )
