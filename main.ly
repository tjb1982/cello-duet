\version "2.19"

\include "common.ly"
\include "grave/score.ly"
\include "mass-of-the-mechanics/score.ly"
\include "presto/score.ly"

#(set-default-paper-size "b4")
%#(set-default-paper-size "c4")
%#(set-default-paper-size "a3")

\book {
    \header {
        tagline = ""
        title = Sonata
        composer = "Tom Brennan"
        instrument = "score (non-transposing)"
        %composer = "Mizzen Keel"
    }

    \bookpart {
        \paper {}
        \header {
            subtitle = "Performance notes"
            instrument = ""
            composer = ""
        }
        \markup {
            Stuff and stuff.
        }
    }

    \bookpart {
        \paper {
            %print-all-headers = ##t
            system-system-spacing =
                #'((basic-distance . 25))
            %last-bottom-spacing =
            %    #'((basic-distance . 20))
            %       (minimum-distance . 6)
            %       (padding . 1)
            %       (stretchability . 12))
        }
        \header {
            subtitle = "I: Aria, \"the mass of the mechanics\""
            poet = "Sarah Mangold"
        }
        \mass-of-the-mechanics-score
    }

    %\bookpart {
    %    \paper {
    %        score-system-spacing =
    %            #'((basic-distance . 23))
    %        system-system-spacing =
    %            #'((basic-distance . 15))
    %        ragged-last = ##t
    %    }
    %    \header {
    %        subtitle = "II. Canon"
    %    }
    %    \presto-score
    %}

    \bookpart {
        \paper {
            score-system-spacing =
                #'((basic-distance . 23))
            system-system-spacing =
                %#'((basic-distance . 15))
                #'((basic-distance . 20))
            ragged-last = ##t
        }
        \header {
            subtitle = "III. Saraband"
        }
        \grave-score
        \grave-score-a-sub-one
        \grave-score-a-sub-two
        \grave-score-b
        \grave-score-c-sub-one
        \grave-score-c-sub-two
    }

    %\bookpart {
    %    \paper {
    %        score-system-spacing =
    %            #'((basic-distance . 23))
    %        system-system-spacing =
    %            #'((basic-distance . 15))
    %        ragged-last = ##t
    %    }
    %    \header {
    %        subtitle = "IV."
    %    }
    %    \presto-score
    %}

}
