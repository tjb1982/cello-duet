\include "grave/cello-a.ly"
\include "grave/cello-b.ly"

music = {
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
grave-score-intro = \score {
    \new StaffGroup \removeWithTag #'transposing \music
    \layout {
        indent = \main-indent
    }
}
grave-score-intro-tr = \score {
    \new StaffGroup \removeWithTag #'sounding \music
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
}


music = {
    <<
        \new Staff \with {
            instrumentName = \vc-two-short-name
            shortInstrumentName = "" %\vc-two-short-name
            midiInstrument = \midi-inst
            \RemoveEmptyStaves
        } {
            \cello-b-async-opening-ostinato
        }
    >>
}
grave-score-a-sub-two = \score {
    \new StaffGroup \removeWithTag #'transposing \music
    \layout {
        indent = \main-indent
    }
}
grave-score-a-sub-two-tr = \score {
    \new StaffGroup \removeWithTag #'sounding \music
    \layout {
        indent = \main-indent
    }
}


music = {
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
grave-score-b = \score {
    \new StaffGroup \removeWithTag #'transposing \music
    \layout {
        indent = \short-indent
        short-indent = \short-indent
    }
}
grave-score-b-tr = \score {
    \new StaffGroup \removeWithTag #'sounding \music
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
}


music = {
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
grave-score-c-sub-two = \score {
    \new StaffGroup \removeWithTag #'transposing \music
    \layout {
        indent = \main-indent
    }
}
grave-score-c-sub-two-tr = \score {
    \new StaffGroup \removeWithTag #'sounding \music
    \layout {
        indent = \main-indent
    }
}


music = {
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
grave-score-d = \score {
    \new StaffGroup \removeWithTag #'transposing \music
    \layout {
        indent = \short-indent
        short-indent = \short-indent
    }
}
grave-score-d-tr = \score {
    \new StaffGroup \removeWithTag #'sounding \music
    \layout {
        indent = \short-indent
        short-indent = \short-indent
    }
}
