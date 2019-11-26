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
        The "\"ø\"" symbol here means articulate this pizzicato with the right hand at 1/2 of the string length (i.e., the first harmonic node of the notated fundamental); this gives it a clarinet-like sound (i.e., a square waveform).
    }
}
left-hand-pizz-note = \markup {
    \wordwrap \small {
        The left hand should become more and more percussive here (i.e., "\"left-hand pizzicato\"", "\"hammer-on/-off\"", etc.), foreshadowing the normal pizzicatos that follow, even while the right hand (bowing) diminishes the volume of the pitches to \concat { \italic niente . }
    }
}

cello-b = \new Voice \relative c' {
    \tempo "Grave" 8 = 72-84
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
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \mark \markup { \box \a-sub-two \small { \concat { ( notifies " " \a-sub-one ) }}}
    \override TextSpanner.bound-details.left.text = \markup {\upright "III"}
    <a b>4-- ^\markup \sempre-ad-lib \p \> <a a>4-- a4. \fermata \breathe a8.-- \pp \< ( a16-- )
    | b8 ( a4. )
        a4.-- ( \p \> \tuplet 3/2 { a8-- g-- ) b  ( }
        a2~ \startTrillSpan
        \fermata \cross-head a8 \stopTrillSpan )
        a4-- \pp \startTextSpan ( a8.-- \< b16-- )
    | b8 ( a4. )
        g4.-- ( b8-- ) b8 (
        a2~ \startTrillSpan \p \>
        \fermata \cross-head a8 \stopTrillSpan \! )

        r8
        a8~ \pp \< ( \tuplet 3/2 { a16 g b } \tuplet 3/2 { a32 \p \> g b } \repeat percent 2 { \tuplet 3/2 { \footnote #'(0 . 3) \left-hand-pizz-note a64 g b } }
    | \autoBeamOff \cross-head a8 \stopTextSpan \! ) \autoBeamOn \breathe
    <<
        { \voiceOne
            s8 r8 b8 \fermata \laissezVibrer ^\mf -\markup{
                \small \concat { "II, "  \italic "m. vibr." }
            }
        }
        \new Voice { \voiceTwo
            \override TextSpanner.bound-details.left.text = \markup {\upright "pizz."}
            a8 \laissezVibrer \p \startTextSpan
            \harmonicsOn g8 _"III" \pp \laissezVibrer s8 \harmonicsOff
            \footnote #'(0 . 3) \square-pizz-note a4. \pp \laissezVibrer \halfopen \stopTextSpan
        }
    >>
    \oneVoice
    r8 \repeat tremolo 8 a64 \pp ^"arco"^\markup { \small \italic "ric." } ~ 
    | \override TextSpanner.bound-details.left.text = \markup {\small "sul pont." }
        4\espressivo \fermata r32 g-. \startTextSpan ( b16-.-> ) r16
        r64 a-.-> \p ( g-. b-. ) a4.~ \> \startTrillSpan \cross-head a8 \!
            \stopTrillSpan \stopTextSpan \breathe
            r8
    %| \cross-head a4~
    %        ^\markup {\small "II"}
    %        -\markup {\small \italic "poco vibrato"}
    %    a4 \pp a4-- ( 8--~ \segno
    %    \mark \markup { \box \bold "B" }
    %    \bar "!" \hideNotes a8 ) \unHideNotes
}

cello-b-rehearsal-b = \new Voice = "hate" \relative c' {
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
        \mark "allarg."
        \autoBeamOff
        \repeat tremolo 8 <a beses>64 ( \pp \<
        ^\markup {
            \small \italic "bariolage, molto flautando"
        } _\markup { \small "I,II" }

        \repeat tremolo 8 <a gisis! beses!>64
        _\markup {
            \small "I,II,III"
        }

        \repeat tremolo 8 <a g! beses!>64 \p \>
        \repeat tremolo 8 <gisis! aisis b!>64
        \autoBeamOn
        \repeat tremolo 16 <b! a! g!>64 \pp \fermata )
        \breathe

        \mark "freely"
        \clef "treble" \tuplet 3/2 { a16 -\markup {\small \italic "sweetly" } ( b e ) } dis8. ( cis'16~
    | cis8~ \fermata cis8~ )
        ^\markup { \small \italic "quasi cadenza" }
        \appoggiatura { \tuplet 3/2 { cis16 d cis } \tuplet 5/4 { c32 b cis, a' g }
            \clef "tenor" \tuplet 9/8 { fis64 e d a c b a g b } }
        a8~ \pp (
            \tuplet 3/2 { a32 \p \> g b }
            \repeat unfold 2 { \tuplet 3/2 { a64 g b } } \mark \tempo-one a4. \pp \trill )
        a4~
    | 4 g b4. a8 g
    | g4 a4 d,4. a'4~
    | \mark "stringendo" <a a>4 <a g> <a b>4 <a a>8 <a d,>4
    | \time 5/8
        \set beatStructure = 3,2
        \clef "bass" <g, d'>4---> <d' a'>8 <d a'> <g, d'>
    | <<
        {
            <g d'>4---> ~ \sfp \< ^\markup { \updownbow }
                <g d'>8 ~ \tuplet 3/2 { <g d'>32 \ff \laissezVibrer r16 } r8
        }
        \new Staff \with {
            \remove "Time_signature_engraver"
            alignAboveContext = "cello-b"
        } {
            \clef "tenor" r4 r8
            \tuplet 3/2 { r32 g' \pp -\markup {\small \italic "molto legato, flautando" } ( a }
                \tuplet 9/8 { b64 d \clef "treble" g a b d b a g }
                \tuplet 3/2 { \clef "tenor" d32 b a ) }
        }
    >>
    | r4
}


