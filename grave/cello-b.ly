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

cello-b-async-opening-ostinato = \new Voice \relative c' {
    \once \omit Staff.TimeSignature
    \compoundMeter #'((4 8) (3 8) (2 8))
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 4,3,2
    \clef "tenor"
    \partial 8 \hideNotes b8 \unHideNotes \bar "||"
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \mark \markup { \bold \box \concat { "A" \sub \teeny "1" } }
    %\time 3/4
    %\tempo \markup {
    %    \concat {
    %        \smaller \general-align #Y #DOWN \note #"4" #1
    %        " = "
    %        \smaller \general-align #Y #DOWN \note #"8" #1
    %    }
    %}
    <a b>4. \p \> ( a8~ a4. ) \fermata \breathe <a a>4-- ( \pp
    | <a g>8-- <a b>4~ \> \no-head b8 \! ) \breathe a8.^"III." \< ( g16 b8 a4
    | a4.-- \p \> g8 ) b8 ( a4~ 8 \fermata ) \! r8
}

