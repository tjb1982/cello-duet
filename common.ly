instrument-names = #'((vc1 . ("Cello I" "I"))
           (vc2 . ("Cello II" "II")))
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
letter-c = \markup { \bold \box "C" \small \concat { "= " ( \c-sub-one ", " \c-sub-two ) } }

c-sharp = \markup \concat { C \small \super \sharp }

main-indent = #29
short-indent = #4

updownbow = \markup {
    \concat { \musicglyph "scripts.downbow" \musicglyph "scripts.upbow" }
}

sempre-ad-lib = \markup {\small \italic "semper ad lib."}

lvpizz-note = \markup \wordwrap \small {
    **) Left-hand pizzicatos should be \italic "laissez vibrer" unless otherwise noted.
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
    *) The dynamic "\"envelopes\"" here and in the next bar should be more bell-curved than linear,
    so that the sound emerges more \italic subito than the \italic nientes at other points
    in the movement.
}

niente-notehead-note = \markup { \wordwrap \small {
    *) The grey noteheads here mean \concat { \italic niente "." }
}}

air-sound-note = \markup \wordwrap \small {
    *) The articulation of this \c-sharp (i.e., the duration comprising all three tied notes) should transition from \italic {molto ponticello} to "\"pitch-colored\" noise." This should be made by first becoming so \italic { sul pont. } that the pitch becomes almost indiscernable (a.k.a., \concat { \italic "tonlos" ";" } "however," the mute will prevent the bow from actually playing on top of the "bridge)," and then lift the left-hand stopping finger so that it isn't stopping the string on the fingerboard, but is instead touching the \c-sharp as if it were a harmonic node, while also touching one or more fingers in a similar manner behind this location, which prevents the possibility of any natural harmonic sounding. Give it lots of bow, slowing the tremolo down gradually to end on a single down-bow. But be careful not to bow hard enough to produce "\"scratch tone\"" effects; the whole event should ultimately be "\"pretty.\"" And although there's a lot of process here, this gesture shouldn't last a long time.
}

legno-note = \markup \wordwrap \small {
    ***) Under "\"rustling,\"" hold the bow almost \italic { col legno } so that a small number "(< 25%)" of the articulations are colored by the wood.
}

noteaboutmf = \markup {
    \wordwrap \small {
        *****) This is the only \dynamic mf in the \box A section, and the only dynamic above \concat { \dynamic p "," } so it should stick out somewhat.
    }
}

square-pizz-note = \markup {
    \wordwrap \small {
        ******) The "\"ø\"" symbol here means articulate this pizzicato with the right hand at 1/2 of the string length (i.e., the first harmonic node of the notated fundamental); this gives it a clarinet-like sound (i.e., a square waveform).
    }
}
left-hand-pizz-note = \markup {
    \wordwrap \small {
        ****) The left hand should become more and more percussive here \concat {"(i.e., " "\"hammer- on/off\""")," } foreshadowing the normal pizzicatos that follow. %, even while the bowing right hand diminishes the volume of the pitches to \concat { \italic niente . }
    }
}

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

%trp = \once \override NoteHead.style = #'diamond
trp =
#(define-music-function
  (parser location x) (ly:music?)
  #{ \tweak NoteHead.font-size 1
     \tweak NoteHead.style #'diamond #x #})
