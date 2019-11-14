instrument-names = #'((vc1 . ("Violoncello I" "I."))
           (vc2 . ("Violoncello II" "II.")))
vc-one-names = #(assoc-ref instrument-names 'vc1)
vc-two-names = #(assoc-ref instrument-names 'vc2)
vc-one-name = #(car vc-one-names)
vc-one-short-name = #(cadr vc-one-names)
vc-two-name = #(car vc-two-names)
vc-two-short-name = #(cadr vc-two-names)

midi-inst = "cello"

