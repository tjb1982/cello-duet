\version "2.19"

\include "common.ly"
\include "grave/score.ly"
\include "mass-of-the-mechanics/score.ly"

#(set-default-paper-size "a4")

\book {
    \paper {
        %print-all-headers = ##t
        %bottom-margin = 20\mm
        %system-system-spacing =
        %    #'((basic-distance . 20))
        score-system-spacing =
            #'((basic-distance . 20))
        %last-bottom-spacing =
        %    #'((basic-distance . 20))
        %       (minimum-distance . 6)
        %       (padding . 1)
        %       (stretchability . 12))
    }
    \header {
        tagline = ""
        title = "Sonata"
        composer = "Tom Brennan"
    }
    \bookpart {
        \header {
            subtitle = "I."
        }
        \grave-score
        \grave-score-cello-a-async-opening-ostinato
        \grave-score-cello-b-async-opening-ostinato
        %\grave-score-cello-a-async-one
        %\grave-score-cello-b-async-one
    }

    \bookpart {
        \header {
            subtitle = "II. \"the mass of the mechanics\""
            poet = "Sarah Mangold"
            instrument = "score (non-transposing)"
        }
        \mass-of-the-mechanics-score
    }
}
