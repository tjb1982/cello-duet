\include "./mass-of-the-mechanics/cello-a.ly"
\include "./mass-of-the-mechanics/cello-b.ly"

mass-of-the-mechanics-score = \score {
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
        indent = \main-indent
        short-indent = \short-indent
    }
}

