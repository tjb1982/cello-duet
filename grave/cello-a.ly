%no-head = \once \override NoteHead.transparent = ##t
no-head = \once \override NoteHead.style = #'cross

cello-a = \new Voice \relative c' {
    \tempo "Grave" 8 = 60
    \compoundMeter #'((4 8) (3 8) (2 8))
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 4,3,2
    \clef "tenor"
    r2 \no-head a4.^"II."^\markup {\small \italic "poco vibrato"} ~ \< a4 \pp
    | b4. \< c8-- \p 4.~ \> 4~
    | \no-head c8 \! \no-head a4~ \< 8 \pp b4.~ \< 8 c~ \p
    | \mark \markup { \bold \box "A" }
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
    \mark \markup { \bold \box \concat { "A" \sub \teeny "0" } }
    %\once \omit Score.BarLine
    c2~ \> \no-head c8 \! r8 r8 <a a>4-- \p (
    | <a b>4-- \pp \fermata ) r8 b8-- c4.\fermata \> r8 \!
        \override Score.RehearsalMark.self-alignment-X = #LEFT
        \tuplet 5/2 { a64-.^\markup { \small \italic "(jeté ad lib.)" } ( \pp 64-. 64-. 64-. 64-. } 16.\espressivo
        \fermata )
    | <<
        {
            \voiceOne
            \repeat tremolo 8 b64-- ~ [ \p \>
            b8\fermata r8
            \mark \markup { poco rit. }
            b8^\markup { \small \italic "poco sul pont." } ] ^\pp ( c4. ^\> ~ \no-head c8 \! ) r8\fermata
        }
        \new Voice {
            \voiceTwo
            \repeat tremolo 8 a64 r8 r8 a8-+ \laissezVibrer \pp
        }
    >>
}

