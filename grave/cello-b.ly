multinoteRepeatText = \markup {
    \wordwrap \small {
        Unmeasured multi-note "\"trill\":" start somewhat slower, increase speed rapidily and maintain until the \concat { \italic niente "." }
    }
}
ricochetTrillText = \markup {
    \wordwrap \small {
        Begin the "\"trill\"" with a ricochet at the hard \concat { ( \italic legno ) } tip of the bow, lift the bow, then finish with left-hand fingering the notes without the right hand (producing a quiet pizz. sound).
    }
}
square-pizz-note = \markup {
    \wordwrap \small {
        The "\"ø\"" symbol here means articulate this pizzicato with the right hand at 1/2 of the string length (i.e., the first harmonic node of the notated fundamental); this gives it a clarinet-like sound (i.e., a square waveform). The intention with these pizzicatos is to give three different colors on the different strings.
    }
}
left-hand-pizz-note = \markup {
    \wordwrap \small {
        The left hand should become more and more percussive here (i.e., "\"left-hand pizzicato\"", "\"hammer-on/-off\"", etc.), foreshadowing the normal pizzicatos that follow, even while the right hand (bow) diminishes the volume of the pitches to \concat { \italic niente . }
    }
}

cello-b = \new Voice \relative c' {
    \tempo "Grave" 8 = 60-72
    \compoundMeter #'((4 8) (3 8) (2 8))
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 4,3,2
    \clef "tenor"
    r4 \footnote #'(-2 . 2) \markup{ \wordwrap \small {
            Notehead "\"x\"" here means \concat { \italic niente "." }
        } }
        \cross-head a4^"II"^\markup {\small \italic "poco vibrato"} ~ \< a4. \pp ~ a4~
    | 4 g \< b4. \p a4-- \>
    | a4-- 4~ \pp 4. <a g>4 \<
    | \mark \letter-a
        \bar "||" s2 \!
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
    \mark \markup { \box \a-sub-two \small { \concat { ( notifies " " \a-sub-one ) }}}
    \override TextSpanner.bound-details.left.text = \markup {\upright "III"}
    <a b>4-- \p \> <a a>4-- a4. \fermata \breathe a8.-- \pp \< ( a16-- )
    | b8 ( a4. )
        a4.-- \startTextSpan ( \p \> a8-- ) b8 (
        a2~ \startTrillSpan
        \fermata \cross-head a8 \stopTrillSpan \! ) r8
        a8~ \pp \< ( \tuplet 3/2 { a16 g b } \tuplet 3/2 { a32 \p \> g b } \repeat percent 2 { \tuplet 3/2 { \footnote #'(0 . 3) \left-hand-pizz-note a64 g b } }
    | \autoBeamOff \cross-head a8 \stopTextSpan \! ) \autoBeamOn \breathe
    <<
        { \voiceOne
            s8 r8 b8 \fermata \laissezVibrer ^\mf -\markup{
                \small \concat { "II, "  \italic "pont." " and " \italic "m.v." }
            }
        }
        \new Voice { \voiceTwo
            \override TextSpanner.bound-details.left.text = \markup {\upright "pizz."}
            \footnote #'(0 . 3) \square-pizz-note a8 \laissezVibrer \halfopen \p \startTextSpan
            \harmonicsOn g8 _"III" \pp \laissezVibrer s8 \harmonicsOff
            a4. \pp \laissezVibrer \halfopen \stopTextSpan
        }
    >>
    \oneVoice
    r8 \bar ".|:" \repeat tremolo 8 a64 \pp ^"arco"^\markup { \small \italic "ric." } ~ 
    | \override TextSpanner.bound-details.left.text = \markup {\small "1st time, sul pont."}
        4\espressivo \fermata r32 g-. \startTextSpan ( b16-.-> ) r16 \fermata
        r64 a-.-> \p ( g-. b-. ) a4.~ \> \startTrillSpan \cross-head a8 \!
            \stopTrillSpan \stopTextSpan \breathe
            \bar ":|."
            r8
    | \cross-head a4~
            ^\markup {\small "II"}
            -\markup {\small \italic "poco vibrato"}
        a4 \pp a4-- ( 8--~ \segno
        \mark \markup { \box \bold "B" }
        \bar "!" \hideNotes a8 ) \unHideNotes
}

cello-b-rehearsal-b = \new Voice \relative c' {
    \once \omit Staff.TimeSignature
    \compoundMeter #'((4 8) (3 8) (2 8))
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 4,3,2
    \clef "tenor"
    \partial 4. \hideNotes a8~ \unHideNotes
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \mark \markup { \box \bold "B" }
    %\partial 4
        a4
    |
        \once \override TextSpanner.bound-details.left.text = \markup {\small "molto flautando"}
        \autoBeamOff
        \repeat tremolo 8 <a beses>64 ( \pp \<
        ^\markup {
            \small \italic "bariolage"
        } _\markup { \small "I,II" }
        \startTextSpan

        \repeat tremolo 8 <a gisis! beses!>64
        _\markup {
            \small "I,II,III"
        }

        \repeat tremolo 8 <a g! beses!>64 \p \>
        \repeat tremolo 8 <gisis! aisis b!>64
        \autoBeamOn
        \repeat tremolo 16 <b! a! g!>64 )
        \stopTextSpan
        \breathe

        \clef "treble" \tuplet 3/2 { a16 -\markup {\small \italic "sweetly" } ( b e ) } dis8. ( cis'16~
        | cis4~ \fermata )
            ^\markup { \small \italic "quasi cadenza" }
            \appoggiatura { \tuplet 3/2 { cis16 d cis } \tuplet 5/4 { c32 b cis, a' g }
                \clef "tenor" \tuplet 9/8 { fis64 e d a c b a g b } }
            a8~ \pp \< (
                \tuplet 3/2 { a32 \p \> g b }
                \repeat unfold 2 { \tuplet 3/2 { a64 g b } } a4. \trill )
            a4~
}


