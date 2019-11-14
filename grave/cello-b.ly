cello-b = \new Voice \relative c' {
    \compoundMeter #'((4 8) (3 8) (2 8))
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 4,3,2
    \clef "tenor"
    r4 \no-head a4^"II."^\markup {\small \italic "poco vibrato"} ~ \< a4. \pp ~ a4~
    | 4 g \< b4.~ \p 8 \> a8--
    | a4 4~ \pp 4. g4 \<
    | \mark \markup { \bold \box "A" } \bar "||" s2 \!
}
