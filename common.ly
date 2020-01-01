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
cross-head = \once \override NoteHead.color = #(x11-color 'LightGrey)

slightly-faster-than-tempo-one = \markup {
    slightly faster than tempo I
}
tempo-one = "tempo I"
poco-allarg = "allarg."

a-sub-one = \markup { \concat {\italic "A" \sub \teeny 1} }
a-sub-two = \markup { \concat {\italic "A" \sub \teeny 2} }
letter-a =  \markup { \bold \box "A" \small \concat { "= " ( \a-sub-one ", " \a-sub-two ) } }

c-sub-one = \markup { \concat {\italic "C" \sub \teeny 1} }
c-sub-two = \markup { \concat {\italic "C" \sub \teeny 2} }
letter-c =  \markup { \bold \box "C" \small \concat { "= " ( \c-sub-one ", " \c-sub-two ) } }

c-sharp = \markup \concat { C \small \super \sharp }

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
ricochet = \markup { \small \italic "ric." }

fl = \flageolet

rustling-text = \markup {
    \small \concat {"m. sul tasto" \upright " at the tip; rustling" }
}

angelic = \markup {\whiteout \small "angelic"}

ten = \markup {\whiteout \small \italic "ten."}

swelling = \markup {\small swelling}
swell-note = \markup \wordwrap \small {
    The dynamic "\"envelopes\"" here and in the next bar should be more bell-curved than linear,
    so that the sound emerges more \italic subito than the \italic nientes at other points
    in the movement.
}

niente-notehead-note = \markup { \wordwrap \small {
    The grey notehead here means \concat { \italic niente "." }
}}

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

