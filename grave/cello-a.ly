a-sub-one = \markup { \concat {\italic "A" \sub \teeny 1} }
a-sub-two = \markup { \concat {\italic "A" \sub \teeny 2} }
letter-a =  \markup { \bold \box "A" \small \concat { "= " ( \a-sub-one ", " \a-sub-two ) } }

c-sharp = \markup \concat { C \small \super \sharp }

air-sound-note = \markup \wordwrap \small {
    The articulation of this \c-sharp (i.e., the duration comprising all three tied notes) should go from \italic {molto ponticello} to "pitched noise," made by touching the \c-sharp as if it were a harmonic node, and touching one or more fingers in a similar manner behind this location, which prevents the possibility of a natural harmonic sounding. 
}

cello-a = \new Voice \relative c' {
    \tempo "Grave" 8 = 72-84
    \compoundMeter #'((4 8) (3 8) (2 8))
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 4,3,2
    \clef "tenor"
    r2 \cross-head a4.^"II"^\markup {
            \small \italic "poco vibrato"
        } ~ \< a4
    | b4. c8-- \p 4.~ \> 4~
    | \cross-head c8 \! \cross-head a4~ \< 8 b4.~ 8 c~ \p
    | \override Score.RehearsalMark.self-alignment-X = #LEFT
      \mark \letter-a
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
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \mark \markup { \box \a-sub-one \small { \concat { ( awaits " " \a-sub-two ) }}}
    \partial 8 \hideNotes c8~ \unHideNotes
    \once \omit Score.BarLine
    c2~ ^\markup \sempre-ad-lib \> \cross-head c8 \! r8 <<
        { \voiceOne
            \once \override TextSpanner.bound-details.left.text = \markup {
                \small "piu vibrato"
            }
            %\bar ".|:"
            a8~ ^\pp \startTextSpan ( 4
            | b4 \espressivo \fermata ) r8 b8-- ( c4\fermata \stopTextSpan ) \espressivo \breathe
            %\bar ":|."
            \override TextSpanner.bound-details.left.text = \markup {\small \upright "III"}
                r8 a4-- \startTextSpan ^\<
            | b4-- c4~ ^\p ^\> c4. \fermata \stopTextSpan \breathe r8 ^\!
            \repeat tremolo 4 a64^\markup { \small \italic "ricochet" } ~ ^\pp 16\espressivo \fermata
        }
        \new Voice
        { \voiceTwo
            s8 a4~ \pp
            | a4 \fermata r8 a8-- _\markup {\teeny "(arco)"} \laissezVibrer r4.
            r8 a8-+ \p ~ | a4. a8-+ \pp ~ a4. a4-+ \p
        }
        >>
        %\override Score.RehearsalMark.self-alignment-X = #LEFT
        \breathe
    | <<
        {
            \voiceOne
            \repeat tremolo 8 b64-- ~ [ \p -\markup { \small \italic "trem." }
            b8\fermata \pp r8
            \once \override TextSpanner.bound-details.left.text = \markup {\small "sul tasto"}
            b8 \startTextSpan ] ( c4. \> ~ \cross-head c8 \! ) r8
            | \acciaccatura a8 b16-.\pp c64-. ( \repeat unfold 3 c64-. c4. \> ~ \cross-head c8 \! \stopTextSpan )
        }
        \new Voice {
            \voiceTwo
            \repeat tremolo 8 a64 r8 r8 a8-+ \laissezVibrer r4. r4
            | r32 a32-+ \laissezVibrer s16 s8 s4 s8 s8
        }
    >>
        \oneVoice
        \clef "bass" f,8 \harmonic \p \laissezVibrer
        \clef "tenor"
        r8 \fermata
        \override TextSpanner.bound-details.left.text = \markup {\small \concat {"molto sul tasto" \upright ", at the tip; leaves rustling" }}
        r32 [ c''16 \pp \startTextSpan ( a32-. ) ]
    | r8 \tuplet 3/2 { b32 ( a64 b a-. ) a-! } r16
        r4 r16 r32 a64 ( c \tuplet 5/4 { b16-. ) g-! c-! a-! a-! }
        r8 \repeat tremolo 8 <a a>64 -\markup {\small \italic "ricochet" } ~
    | a8 r16. a32 ~ \tuplet 5/4 { a16 [ b32-. ( b32-. ) g16-! a-! c-! ] }
        \repeat tremolo 12 <a g>64 -\markup {\small \italic "trem."} [ ( a16-. ) r16 b-! \stopTextSpan ]
        \tuplet 3/2 { r8 c-"pizz." ^"IV" \harmonic \laissezVibrer r8 }
    | r32 \clef "bass"
            \harmonicsOn <g f,>16.-"arco" ~ 8 \espressivo \harmonicsOff r4
            r16. \clef "tenor" <a b>32 ~ 8 \espressivo r16.
                \clef "bass" \repeat tremolo 2 f,64 \harmonic ~
            \repeat tremolo 16 f64 \harmonic \espressivo ~
    | \repeat tremolo 4 f64 \harmonic \clef "tenor" 

    %\cadenzaOn
    %\set Score.barAlways = ##t
    %\set Score.defaultBarType = ""
    %\omit Stem
    %\set beatStructure = 4,3,2
    %c16.. b64 ~
    %| 8. [ ~ 64 a64 ~ 32 8. r16 ]
    %    r16.. [ b64 ~ b8 r8 ]
    %    r64 [ g64~ g32 ~ 16 a8 ~ ]
    %| 64 [ 64 ~ 32 ~ 16 ~ 32. b64 ~ 32 ~ 64 r64 r8 ]
    %    c16 r16     a16. [ r32     r32 g64 b64 ~ b16 ]
    %    a8 ~ a32 b16. 
    %%| ~ 16 ~ 64 b64 ~ 32 ~
    %| b32 b16 g32     ~ g8    ~ 32 b32 ~ 16     ~ 16 ~ 64 a64 ~ 32 ~
    %    a8 [ ~ a32 c32 ~ c16 ~  c16 ~ c32 ~ c64 r64  r8 ]
    %    r16 [ a16 ~ a8 ]
    %| b8. ~ 64 c64 ~ 32      ~ c8. ~ 64 c64 ~ 32     ~ 8. ~ 64 c64 ~ 32 ~
    %    8. ~ 64 a64 ~ 32 ~ a16 ~      a16 ~ 32 b32 ~

    %    \bar "!"
    %    \mark \markup { \box \bold "B" }
    %    s8
}

cello-a-rehearsal-b = \new Voice \relative c' {
    \once \omit Staff.TimeSignature
    \compoundMeter #'((4 8) (3 8) (2 8))
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 4,3,2
    \clef "tenor"
    \partial 4. \hideNotes a8 \unHideNotes
    \bar "!"
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \mark \markup { \box \bold "B" }
    %\partial 4
        %\once \override TextSpanner.bound-details.left.text = \markup {\small "molto flautando"}
        \autoBeamOff
        \once \override Hairpin.to-barline = ##f 
        \repeat tremolo 8 <a beses>64 ( \pp \<
        ^\markup {
            \small \italic "bariolage, molto flautando"
        } ^\markup { \small "I,II" }

        \repeat tremolo 8 <a gisis beses!>64
        ^\markup {
            \small "I,II,III"
        }
    |
        \mark "allarg."
        \repeat tremolo 8 <a gisis b!>64 \p \>
        \repeat tremolo 8 <gisis! aisis b!>64
        \autoBeamOn
        \repeat tremolo 16 <b! ces>64 ^\markup {
            \small "II,III"
        } ) \!
        \breathe

        \repeat tremolo 16
            \footnote #'(-3 . 2) \air-sound-note
            cis64~ \p
            ^\markup {\small \concat { \italic "m. pont." ", almost " \italic "tonlos"} }
            ^\markup { \small "II" }
            \fermata
            \espressivo
        \mark "freely"
        \repeat tremolo 8 cis64~ \>

        \cross-head \repeat tremolo 8 cis64 \! r8
    | r8 \fermata
        <a a>8~ ^\markup { \small { "II:" \italic "senza vibrato" } } \pp
        <a a>8~ <a~ a> ^\markup { \small \italic "poco vibrato" }
        \mark \tempo-one
        a4.~ a8 a--
    | b4. c!8 4.~ 4~
    | \cross-head c8 \! \cross-head a4~ 8 a4.~ a8 8
    | \mark "stringendo" <a b>4. <a c>8 <a c>4. a8-- ( <a d>-- )
    | \time 5/8
        \set beatStructure = 3,2
        <a d>4---> <a a>8-- \mark "riten." <a a>-- ( <d a>-- )
    | <<
        {
            \clef "bass" <c,, g'>4---> \sfp \< ^\markup { \updownbow } ~
                <c g'>8 ~ \tuplet 3/2 { <c g'>32 \ff \laissezVibrer r16 } r8
        }
        \new Staff \with {
            \remove "Time_signature_engraver"
            alignAboveContext = "cello-a"
        } {
            \clef "tenor" r4 r8
            \tuplet 3/2 { r32 b'' \pp -\markup {\small \italic "molto legato, flautando" } ( d }
                \tuplet 9/8 { \clef "treble" g64 a b d g d b a g }
                \tuplet 3/2 { \clef "tenor" d32 b a ) }
        }
    >>
    | r4
}


