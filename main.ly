\version "2.19"

\include "common.ly"
\include "performance-notes.ly"
\include "grave/score.ly"
\include "mass-of-the-mechanics/score.ly"
\include "presto/score.ly"

#(set-default-paper-size "b4")

composer = "Tom Brennan"
main-title = "Sonata"
subtitle-mass = "I: Aria, \"the mass of the mechanics\""
subtitle-grave = "III. Saraband"

poet = "Sarah Mangold"

\book {
    \header {
        tagline = ""
        title = \main-title
        composer = \composer
        instrument = "score (sounding)"
    }

    \bookpart {
        \performance-notes
    }

    \bookpart {
        \paper {
            system-system-spacing =
                #'((basic-distance . 25))
        }
        \header {
            subtitle = \subtitle-mass
            poet = \poet
        }
        \mass-of-the-mechanics-score
    }

    \bookpart {
        \paper {
            score-system-spacing =
                #'((basic-distance . 23))
            system-system-spacing =
                #'((basic-distance . 20))
            ragged-last = ##t
        }
        \header {
            subtitle = \subtitle-grave
        }
        \grave-score-intro
        \grave-score-a-sub-one
        \grave-score-a-sub-two
        \grave-score-b
        \grave-score-c-sub-one
        \grave-score-c-sub-two
        \grave-score-d
    }

    %%%% transposing
    \bookpart {
        \paper {
            system-system-spacing =
                #'((basic-distance . 25))
        }
        \header {
            subtitle = "I: Aria, \"the mass of the mechanics\""
            poet = "Sarah Mangold"
            instrument = "score (transposing)"
        }
        \mass-of-the-mechanics-score-tr
    }

    \bookpart {
        \paper {
            score-system-spacing =
                #'((basic-distance . 23))
            system-system-spacing =
                #'((basic-distance . 20))
            ragged-last = ##t
        }
        \header {
            subtitle = "III. Saraband"
            instrument = "score (transposing)"
        }
        \grave-score-intro-tr
        \grave-score-a-sub-one
        \grave-score-a-sub-two-tr
        \grave-score-b-tr
        \grave-score-c-sub-one
        \grave-score-c-sub-two-tr
        \grave-score-d-tr
    }

}

