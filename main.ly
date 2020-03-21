\version "2.19"

\include "common.ly"
\include "performance-notes.ly"
\include "grave/score.ly"
\include "mass-of-the-mechanics/score.ly"
\include "presto/score.ly"

#(set-default-paper-size "b4")

composer = "Tom Brennan"
main-title = "Sonata for Two Cellos"
subtitle-mass = "I: Aria, \"the mass of the mechanics\""
subtitle-grave = "III. Saraband"

score-sounding = "score (sounding)"
score-transposing = "score (transposing)"

poet = "Sarah Mangold"

\book {
    \header {
        tagline = ""
        title = \main-title
    }
    \paper {
        print-all-headers = ##t
    }

    \bookpart {
        \header {
            title = ""
        }
        \markup {
            \column {
                \fontsize #6 \bold \main-title
                "(2019—2020)"
                \null
                "by Tom Brennan"
            }
        }
    }

    \bookpart {
        \performance-notes
    }

    %%%% transposing
    \bookpart {
        \paper {
            system-system-spacing =
                #'((basic-distance . 25))
        }
        \header {
            instrument = \score-transposing
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
            instrument = \score-transposing
        }
        \grave-score-intro-tr
        \grave-score-a-sub-one
        \grave-score-a-sub-two-tr
        \grave-score-b-tr
        \grave-score-c-sub-one
        \grave-score-c-sub-two-tr
        \grave-score-d-tr
    }
    %\transposing

    %%%% sounding
    \bookpart {
        \header {
            instrument = \score-sounding
        }
        \paper {
            system-system-spacing =
                #'((basic-distance . 25))
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
            instrument = \score-sounding
        }
        \grave-score-intro
        \grave-score-a-sub-one
        \grave-score-a-sub-two
        \grave-score-b
        \grave-score-c-sub-one
        \grave-score-c-sub-two
        \grave-score-d
    }
    %\sounding

}

