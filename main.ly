\version "2.19"

\include "cello-a.ly"
\include "cello-b.ly"

#(set-default-paper-size "a4")
names = #'((vc1 . ("Violoncello I" "I."))
           (vc2 . ("Violoncello II" "II.")))
midi-inst = "cello"

\book {
    \paper {
        %print-all-headers = ##t
        %bottom-margin = 20\mm
        %system-system-spacing =
        %    #'((basic-distance . 20))
        %last-bottom-spacing =
        %    #'((basic-distance . 20))
        %       (minimum-distance . 6)
        %       (padding . 1)
        %       (stretchability . 12))
    }
    \bookpart {
        \header {
            tagline = ""
            title = "the mass of the mechanics"
            poet = "Sarah Mangold"
            composer = "Tom Brennan"
            instrument = "score (non-transposing)"
        }
        \score {
            \new StaffGroup {
                <<
                    \new Staff \with {
                            instrumentName = #(car (assoc-ref names 'vc1))
                            shortInstrumentName = #(cadr (assoc-ref names 'vc1))
                            midiInstrument = \midi-inst
                            \RemoveEmptyStaves
                    } {
                        \cello-a
                        %\mark \markup { \bold \box A }
                    }
                    \new Staff \with {
                            instrumentName = \markup {
                                \column {
                                    #(car (assoc-ref names 'vc2))
                                    \line { (A, D, G, B \small \flat) }
                                }
                            }
                            shortInstrumentName = #(cadr (assoc-ref names 'vc2))
                            midiInstrument = \midi-inst
                            \RemoveEmptyStaves
                    } {
                        \cello-b
                    }
                >>
            }
            \layout {
                indent = #25
            }
            \midi {}
        }
    }
    %{\bookpart {
        \header {
            tagline = ""
            title = "the mass of the mechanics"
            poet = "Sarah Mangold"
            composer = "Tom Brennan"
            instrument = "score (non-transposing)"
        }
        \score {
            \new StaffGroup {
                <<
                    \new Staff \with {
                            instrumentName = #(car (assoc-ref names 'vc1))
                            shortInstrumentName = #(cadr (assoc-ref names 'vc1))
                            midiInstrument = \midi-inst
                            \RemoveEmptyStaves
                    } {
                        a1
                        %\mark \markup { \bold \box A }
                    }
                    \new Staff \with {
                            instrumentName = \markup {
                                \column {
                                    #(car (assoc-ref names 'vc2))
                                    \line { (A, D, G, B \small \flat) }
                                }
                            }
                            shortInstrumentName = #(cadr (assoc-ref names 'vc2))
                            midiInstrument = \midi-inst
                            \RemoveEmptyStaves
                    } {
                        a1
                    }
                >>
            }
            \layout {
                indent = #25
            }
            \midi {}
        }
    }%}
}
