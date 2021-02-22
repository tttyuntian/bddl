
(:goal 
    (and 
        (exists 
            (?jar - jar) 
            (forall 
                (?tomato - tomato) 
                (and 
                    (inside ?tomato ?jar) 
                    (cooked ?tomato) 
                    (sliced ?tomato) 
                    (not 
                        (inside ?pickle1 ?jar)
                    )
                )
            )
        ) 
        (exists 
            (?jar - jar) 
            (forall 
                (?pickle - pickle) 
                (and 
                    (inside ?pickle ?jar) 
                    (cooked ?pickle) 
                    (sliced ?pickle) 
                    (not 
                        (inside ?tomato1 ?jar)
                    )
                )
            )
        ) 
        (forall 
            (?jar - jar) 
            (and 
                (exists
                    (?cabinet - cabinet)
                    (inside ?jar ?cabinet)
                ) 
                (inside ?water1 ?jar) 
                (inside ?sugar1 ?jar)
            )
        ) 
        (ontop ?pot1 ?stove1) 
        (ontop ?pan1 ?stove1)
    )
)