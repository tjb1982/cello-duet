\include "./mass-of-the-mechanics/cello-a.ly"
\include "./mass-of-the-mechanics/cello-b.ly"

music = {
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

mass-of-the-mechanics-score = \score {
    \new StaffGroup \removeWithTag #'transposing \music
    \layout {
        indent = \main-indent
        short-indent = \short-indent
    }
}

mass-of-the-mechanics-score-tr = \score {
    \new StaffGroup \removeWithTag #'sounding \music
    \layout {
        indent = \main-indent
        short-indent = \short-indent
    }
}

