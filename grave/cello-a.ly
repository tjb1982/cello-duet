%no-head = \once \override NoteHead.transparent = ##t
no-head = \once \override NoteHead.style = #'cross

cello-a = \new Voice \relative c' {
    \tempo "Grave" 8 = 60
    \compoundMeter #'((4 8) (3 8) (2 8))
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 4,3,2
    \clef "tenor"
    r2 \no-head a4.^"II."^\markup {\small \italic "poco vibrato"} ~ \< a4
    | b4. c8-- \p 4.~ \> 4~
    | \no-head c8 \! \no-head a4~ \< 8 b4.~ 8 c~ \p
    | \override Score.RehearsalMark.self-alignment-X = #LEFT
      \mark \markup { \bold \box "A" }
        \bar "||"
        \hideNotes c2
}

cello-a-async-opening-ostinato = \new Voice \relative c' {
    \once \omit Staff.TimeSignature
    \compoundMeter #'((4 8) (3 8) (2 8))
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 4,3,2
    \clef "tenor"
    \partial 8 \hideNotes c8~ \unHideNotes \bar "||"
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \mark \markup { \bold \box \concat { "A" \sub \teeny "0" } }
    %\once \omit Score.BarLine
    c2~ \> \no-head c8 \! r8 <<
        { \voiceOne
            a8~ ^\pp ( 4
            | b4 \espressivo \fermata r8 b8 c4.\fermata ) \espressivo \breathe a4 ^\< (
            | b4 c4~ ^\p ^\> c4. \fermata ) \breathe r8 ^\!
            a64-.^\markup { \small \italic "(jeté ad lib.)" } ( ^\pp 64-. 64-. 64-. 16\espressivo \fermata )
        }
        \new Voice
        { \voiceTwo
            s8 a4~ \pp
            | a4. \fermata ~ a8 r4.
            r8 a8 ~ | a4.~ a8 r4. a4-+ \p
        }
        >>
        %\override Score.RehearsalMark.self-alignment-X = #LEFT
        \breathe
    | <<
        {
            \voiceOne
            \repeat tremolo 8 b64-- ~ [ \p
            b8\fermata \pp r8
            \once \override TextSpanner.bound-details.left.text = \markup {\small "poco sul pont."}
            b8 \startTextSpan ] ( c4. \> ~ \no-head c8 \! ) r8
            | b8\pp ( c4. \> ~ \no-head c8 \! \stopTextSpan ) \breathe c8\harmonic\espressivo
                \oneVoice
                r8 
        }
        \new Voice {
            \voiceTwo
            \repeat tremolo 8 a64 r8 r8 a8-+ \laissezVibrer r4. r4
            | a8-+ \laissezVibrer s8 s4 s8 s8 s8
        }
    >>
        \repeat tremolo 16 a64 \ppp \espressivo
            ^\markup {\small  \italic "fully sul pont."}
            -\markup {\teeny \italic "bariolage on 3 strings" } \breathe
    | \repeat tremolo 32 b64 \espressivo -\markup { \teeny \italic "bariolage on 2 strings" } \breathe
        \harmonicsOn c4. \laissezVibrer ^"pizz." \harmonicsOff \breathe \no-head a4^"II." ^\markup {\small \italic "ord."} \< ~
    | \bar ".|:"
        \mark \markup { \small "await " \teeny \box \bold \concat {"A" \sub "1"} }
        \once \omit Staff.TimeSignature
        \time 4/4 a1 \pp \espressivo \fermata ~
    | \bar ":|."
        \mark \markup { \bold \box "B" }
        a8
}

