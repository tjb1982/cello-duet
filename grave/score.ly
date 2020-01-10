\include "grave/cello-a.ly"
\include "grave/cello-b.ly"

grave-score-intro = \score {
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
        indent = \main-indent
    }
}

grave-score-a-sub-one = \score {
    \new StaffGroup {
        <<
            \new Staff \with {
                instrumentName = \vc-one-short-name
                shortInstrumentName = "" %\vc-one-short-name
                midiInstrument = \midi-inst
                \RemoveEmptyStaves
            } {
                \cello-a-async-opening-ostinato
            }
        >>
    }
    \layout {
        indent = \main-indent
    }
    %\midi {}
}

grave-score-a-sub-two = \score {
    \new StaffGroup {
        <<
            \new Staff \with {
                instrumentName = \vc-two-short-name
                shortInstrumentName = "" %\vc-two-short-name
                midiInstrument = \midi-inst
                \RemoveEmptyStaves
            } {
                %\override Staff.TimeSignature.stencil = ##f
                \cello-b-async-opening-ostinato
            }
        >>
    }
    \layout {
        indent = \main-indent
    }
    %\midi {}
}

grave-score-b = \score {
    \new StaffGroup {
        <<
            \new Staff = "cello-a" \with {
                instrumentName = \vc-one-short-name
                shortInstrumentName = \vc-one-short-name
                midiInstrument = \midi-inst
                \RemoveEmptyStaves
            } { \cello-a-rehearsal-b }
            \new Staff = "cello-b" \with {
                instrumentName = \vc-two-short-name
                shortInstrumentName = \vc-two-short-name
                midiInstrument = \midi-inst
                \RemoveEmptyStaves
            } {
                \cello-b-rehearsal-b
            }
        >>
    }
    \layout {
        indent = \short-indent
        short-indent = \short-indent
    }
}

grave-score-c-sub-one = \score {
    \new StaffGroup {
        <<
            \new Staff \with {
                instrumentName = \vc-one-short-name
                shortInstrumentName = "" %\vc-one-short-name
                midiInstrument = \midi-inst
                \RemoveEmptyStaves
            } {
                \cello-a-rehearsal-c
            }
        >>
    }
    \layout {
        indent = \main-indent
    }
    %\midi {}
}

grave-score-c-sub-two = \score {
    \new StaffGroup {
        <<
            \new Staff \with {
                instrumentName = \vc-two-short-name
                shortInstrumentName = "" %\vc-two-short-name
                midiInstrument = \midi-inst
                \RemoveEmptyStaves
            } {
                \cello-b-rehearsal-c
            }
        >>
    }
    \layout {
        indent = \main-indent
    }
    %\midi {}
}

grave-score-d = \score {
    \new StaffGroup {
        <<
            \new Staff = "cello-a" \with {
                instrumentName = \vc-one-short-name
                shortInstrumentName = \vc-one-short-name
                midiInstrument = \midi-inst
                \RemoveEmptyStaves
            } { \cello-a-rehearsal-d }
            \new Staff = "cello-b" \with {
                instrumentName = \vc-two-short-name
                shortInstrumentName = \vc-two-short-name
                midiInstrument = \midi-inst
                \RemoveEmptyStaves
            } {
                \cello-b-rehearsal-d
            }
        >>
    }
    \layout {
        indent = \short-indent
        short-indent = \short-indent
    }
}

