\include "grave/cello-a.ly"
\include "grave/cello-b.ly"

grave-score = \score {
    \new StaffGroup {
        <<
            \new Staff \with {
                instrumentName = \vc-one-name
                shortInstrumentName = \vc-one-short-name
                midiInstrument = \midi-inst
                \RemoveEmptyStaves
            } { \cello-a }
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
            } { \cello-b }
        >>
    }
    \layout {
        indent = #25
    }
    \midi {}
}

grave-score-cello-a-async-opening-ostinato = \score {
    \new StaffGroup {
        <<
            \new Staff \with {
                instrumentName = \vc-one-short-name
                shortInstrumentName = \vc-one-short-name
                midiInstrument = \midi-inst
                \RemoveEmptyStaves
            } {
                %\override Staff.TimeSignature.stencil = ##f
                \cello-a-async-opening-ostinato
            }
        >>
    }
    \layout {
        indent = #25
    }
    \midi {}
}

grave-score-cello-b-async-opening-ostinato = \score {
    \new StaffGroup {
        <<
            \new Staff \with {
                instrumentName = \vc-two-short-name
                shortInstrumentName = \vc-two-short-name
                midiInstrument = \midi-inst
                \RemoveEmptyStaves
            } {
                %\override Staff.TimeSignature.stencil = ##f
                \cello-b-async-opening-ostinato
            }
        >>
    }
    \layout {
        indent = #25
    }
    \midi {}
}
