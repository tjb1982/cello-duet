presto-score = \score {
    \new StaffGroup {
        <<
            \new Staff \with {
                    instrumentName = \vc-one-name
                    shortInstrumentName = \vc-one-short-name
                    midiInstrument = \midi-inst
                    \RemoveEmptyStaves
            } {
                a4
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
                a4
            }
        >>
    }
    \layout {
        indent = \main-indent
        short-indent = \short-indent
    }
}

