\version "2.19"

\include "cello-a.ly"
\include "cello-b.ly"

#(set-default-paper-size "a4")
names = #'((vc1 . ("Violoncello I" "I."))
           (vc2 . ("Violoncello II" "II.")))
vc-one-names = #(assoc-ref names 'vc1)
vc-two-names = #(assoc-ref names 'vc2)
vc-one-name = #(car vc-one-names)
vc-one-short-name = #(cadr vc-one-names)
vc-two-name = #(car vc-two-names)
vc-two-short-name = #(cadr vc-two-names)

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
    \header {
        tagline = ""
        title = "Sonata"
        subtitle = "I. \"the mass of the mechanics\""
        poet = "Sarah Mangold"
        composer = "Tom Brennan"
        instrument = "score (non-transposing)"
    }
    \bookpart {
        \score {
            \new StaffGroup {
                <<
                    \new Staff \with {
                            instrumentName = \vc-one-name
                            shortInstrumentName = \vc-one-short-name
                            midiInstrument = \midi-inst
                            \RemoveEmptyStaves
                    } {
                        \cello-a
                    }
                    \new Staff \with {
                            instrumentName = \markup {
                                \column {
                                    \vc-two-name
                                    \line { (A, D, G, B \small \flat) }
                                }
                            }
                            shortInstrumentName = \vc-two-short-name
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
    %{
    \bookpart {
        \header {
            title = ""
            subtitle = "II."
            poet = ""
            composer = ""
        }
        \score {
            \new StaffGroup {
                <<
                    \new Staff \with {
                            instrumentName = \vc-one-name
                            shortInstrumentName = \vc-one-short-name
                            midiInstrument = \midi-inst
                            \RemoveEmptyStaves
                    } {
                        a1
                    }
                    \new Staff \with {
                            instrumentName = \markup {
                                \column {
                                    \vc-two-name
                                    \line { (A, D, G, B \small \flat) }
                                }
                            }
                            shortInstrumentName = \vc-two-short-name
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
    }
    %}
}
