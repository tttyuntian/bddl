(define (problem packing_lunches_0)
    (:domain igibson)

    (:objects
     	salad.n.01_1 - salad.n.01
    	electric_refrigerator.n.01_1 - electric_refrigerator.n.01
    	sandwich.n.01_1 - sandwich.n.01
    	chip.n.04_1 chip.n.04_2 - chip.n.04
    	cabinet.n.01_1 - cabinet.n.01
    	juice.n.01_1 - juice.n.01
    	table.n.02_1 - table.n.02
    	pop.n.02_1 - pop.n.02
    	apple.n.01_1 - apple.n.01
    	countertop.n.01_1 - countertop.n.01
    	banana.n.02_1 - banana.n.02
    	bag.n.01_1 bag.n.01_2 - bag.n.01
    	cookie.n.01_1 cookie.n.01_2 - cookie.n.01
    	floor.n.01_1 - floor.n.01
    	agent.n.01_1 - agent.n.01
    )
    
    (:init 
        (inside salad.n.01_1 electric_refrigerator.n.01_1) 
        (inside sandwich.n.01_1 electric_refrigerator.n.01_1) 
        (inside chip.n.04_1 cabinet.n.01_1) 
        (inside chip.n.04_2 cabinet.n.01_1) 
        (ontop juice.n.01_1 table.n.02_1) 
        (ontop pop.n.02_1 table.n.02_1) 
        (ontop apple.n.01_1 countertop.n.01_1) 
        (ontop banana.n.02_1 countertop.n.01_1) 
        (ontop bag.n.01_1 table.n.02_1) 
        (ontop bag.n.01_2 table.n.02_1) 
        (ontop cookie.n.01_1 countertop.n.01_1) 
        (ontop cookie.n.01_2 countertop.n.01_1) 
        (inroom cabinet.n.01_1 kitchen) 
        (inroom countertop.n.01_1 kitchen) 
        (inroom table.n.02_1 kitchen) 
        (inroom electric_refrigerator.n.01_1 kitchen) 
        (inroom floor.n.01_1 kitchen) 
        (onfloor agent.n.01_1 floor.n.01_1)
    )
    
    (:goal 
        (and 
            (forpairs 
                (?chip.n.04 - chip.n.04) 
                (?bag.n.01 - bag.n.01) 
                (inside ?chip.n.04 ?bag.n.01)
            ) 
            (forpairs 
                (?cookie.n.01 - cookie.n.01) 
                (?bag.n.01 - bag.n.01) 
                (inside ?cookie.n.01 ?bag.n.01)
            ) 
            (imply 
                (inside ?salad.n.01_1 ?bag.n.01_1) 
                (inside ?sandwich.n.01_1 ?bag.n.01_2)
            ) 
            (imply 
                (inside ?salad.n.01_1 ?bag.n.01_2) 
                (inside ?sandwich.n.01_1 ?bag.n.01_1)
            ) 
            (exists 
                (?bag.n.01 - bag.n.01) 
                (and 
                    (inside ?salad.n.01_1 ?bag.n.01) 
                    (inside ?juice.n.01_1 ?bag.n.01)
                )
            ) 
            (exists 
                (?bag.n.01 - bag.n.01) 
                (and 
                    (inside ?sandwich.n.01_1 ?bag.n.01) 
                    (inside ?pop.n.02_1 ?bag.n.01)
                )
            ) 
            (or 
                (nextto ?apple.n.01_1 ?bag.n.01_1) 
                (nextto ?banana.n.02_1 ?bag.n.01_1)
            ) 
            (or 
                (nextto ?apple.n.01_1 ?bag.n.01_2) 
                (nextto ?banana.n.02_1 ?bag.n.01_2)
            )
        )
    )
)