instrument-names = #'((vc1 . ("Violoncello I" "I"))
           (vc2 . ("Violoncello II" "II")))
vc-one-names = #(assoc-ref instrument-names 'vc1)
vc-two-names = #(assoc-ref instrument-names 'vc2)
vc-one-name = #(car vc-one-names)
vc-one-short-name = #(cadr vc-one-names)
vc-two-name = #(car vc-two-names)
vc-two-short-name = #(cadr vc-two-names)

midi-inst = "cello"

no-head = \once \override NoteHead.transparent = ##t
cross-head = \once \override NoteHead.style = #'cross

slightly-faster-than-tempo-one = \markup {
    slightly faster than tempo I
}
tempo-one = "a tempo"
poco-allarg = "poco allarg."

main-indent = #29
short-indent = #4

updownbow = \markup {
    \concat { \musicglyph "scripts.downbow" \musicglyph "scripts.upbow" }
}

sempre-ad-lib = \markup {\small \italic "sempre ad lib."}

