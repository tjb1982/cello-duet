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

sempre-ad-lib = \markup {\small \italic "semper ad lib."}

lvpizz-note = \markup \wordwrap \small {
    All left-hand pizzicatos should be \italic "laissez vibrer" unless otherwise noted.
}

ricochet = \markup { \small \italic "ricochet" }

fl = \flageolet

foos =
#(define-music-function
  (parser location x) (ly:music?)
  #{
    \displayMusic #x
    #})

apply =
#(define-music-function
    (event music)
    (ly:event? ly:music?)
  (let ((add-articulation
        (lambda (x)
          (ly:music-set-property! x 'articulations
            (cons event (ly:music-property x 'articulations))
          ))))
    (for-some-music
      (lambda (mus)
        (cond
          ;((music-is-of-type? mus 'event-chord) (add mus))
          ((music-is-of-type? mus 'note-event) (add-articulation mus))
          (else #f)))
      music)
  music))

