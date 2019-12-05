a-sub-one = \markup { \concat {\italic "A" \sub \teeny 1} }
a-sub-two = \markup { \concat {\italic "A" \sub \teeny 2} }
letter-a =  \markup { \bold \box "A" \small \concat { "= " ( \a-sub-one ", " \a-sub-two ) } }

c-sharp = \markup \concat { C \small \super \sharp }

air-sound-note = \markup \wordwrap \small {
    The articulation of this \c-sharp (i.e., the duration comprising all three tied notes) should go from \italic {molto ponticello} to "pitched noise." This should be made by first becoming so \italic { sul pont. } that the pitch becomes almost indecernable (a.k.a., \concat { \italic "tonlos" "," } "however," the mute will prevent the bow from actually playing on top of the "bridge)," and then lift the left-hand stopping finger so that it isn't stopping the string on the fingerboard, but is instead touching the \c-sharp as if it were a harmonic node, while also touching one or more fingers in a similar manner behind this location, which prevents the possibility of any natural harmonic sounding. Give it lots of bow, slowing the tremolo down gradually to end on a single down-bow. But be very careful not to bow hard enough to produce "\"scratch tone\"" effects; the whole event should ultimately be "\"pretty.\"" Also, there's a lot of process here, but this gesture shouldn't last an unduly long time.
}

cello-a = \new Voice \relative c' {
    \tempo "Grave" 8 = 72-76
    \compoundMeter #'((4 8) (3 8) (2 8))
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 4,3,2
    \clef "tenor"
    r2 \bar "!"
        \cross-head a4.^"II"^\markup {
            \small \italic "poco vibrato"
        } -\markup {\small \italic "con sord."} ~ \< \bar "!"
        a4
    | b4. c8-- \p \bar "!" 4.~ \> \bar "!" 4~
    | \cross-head c8 \! \cross-head a4~ \< 8 \bar "!" b4.~ \bar "!" 8 c~ \p
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
    c2~ ^\markup \sempre-ad-lib \> \bar "!" \cross-head c8 \! r8 <<
        { \voiceOne
            \once \override TextSpanner.bound-details.left.text = \markup {
                \small "piu vibrato"
            }
            a8~ ^\pp \startTextSpan ( \bar "!" 4
            | b4 \espressivo \fermata ) r8 b8-- ( \bar "!" c4.\fermata \stopTextSpan )
                \espressivo \breathe
            \override TextSpanner.bound-details.left.text = \markup {\small \upright "III"}
                \bar "!" a4-- \startTextSpan ^\<
            | b4-- c4~ ^\p ^\> \bar "!" c4. \fermata \stopTextSpan \breathe \bar "!" r16 ^\!
            \repeat tremolo 8 a64^\markup \ricochet ~ ^\pp 16
        }
        \new Voice
        { \voiceTwo
            s8 a4~ \pp
            | a4 \fermata r8 a8-- _\markup {\teeny "(arco)"} \laissezVibrer r4.
            r8 \footnote #'(1 . -3) \lvpizz-note a8-+ \p ~ | a4. a8-+ \pp ~ a4. a4-+ \p
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
            b8 \startTextSpan ] ( \bar "!" c4. \> ~ \bar "!" \cross-head c8 \! ) r8
            |
                \acciaccatura a8 b16-.\pp \repeat tremolo 4 c64 -\markup \ricochet ~
                c8 ~ \> c4 ~
                \bar "!" \cross-head c8 \! \stopTextSpan r8
        }
        \new Voice {
            \voiceTwo
            \repeat tremolo 8 a64 r8 r16. a32-+ ~ a8 ~ a4. r8 a-+
            | r32 a32-+ \laissezVibrer s16 s8 s4 s8 s8
        }
    >>
        \oneVoice
        \clef "bass" f,8 \harmonic \p \laissezVibrer \bar "!"
        \clef "tenor"
        <<
            {
                \voiceOne
                r8
                \override TextSpanner.bound-details.left.text = \markup {
                    \small \concat {"molto sul tasto, punta d'arco" \upright "; rustling" }
                }
                r32 [ b'16 ^\pp \startTextSpan ( c32-. ) ]
            }
            \new Voice {
                \voiceTwo
                a8-+ \pp r8
            }
        >>
    |
        <<
            {
                \voiceOne
                \displayMusic { r8 [ \tuplet 3/2 { a32 ( b64 c a-. ) b-! } r16 ] }
                    r32 [ c ( a-. ) b-! c-! r32 r32 a64-! b-! ] \bar "!"
                r16. c64 [ ( a \tuplet 5/4 { b16-. ) c-! a-! b-! c-! ] } \bar "!"
                r8. \repeat tremolo 4 <a a>64 -\markup \ricochet ~
            }
            \new Voice {
                \voiceTwo
                a8-+ r8 r4
                a8-+ r8 r8
                a8-+ r8
            }
        >>
    |
        <<
            {
                \voiceOne
                a8 [ r16. b32 ] ~ \tuplet 5/4 {
                    b16 [ c32-. ( a32-. ) b16-! c-! a64-. ( b-. c-. ) a ~ ]
                } \bar "!"
                \repeat tremolo 12 <a a>64 -\markup {
                    \small \italic "trem."} [ ( a16-. ) r16 b16-! \stopTextSpan ] \bar "!"
                \tuplet 3/2 { r8 c-"pizz." ^"IV" \harmonic \laissezVibrer r8 }
            }
            \new Voice {
                \voiceTwo
                a8-+ r8 r4
                r8 r r
                a8-+ r
            }
        >>
    | \oneVoice
        \mark \markup { \small { repeat ad lib. } }
        \bar ".|:"
        r32 \harmonicsOn \clef "bass" f,16.-"arco" ~ 8 \espressivo \harmonicsOff r4 \bar "!"
            r16. \clef "tenor" <a' b>32 ~ 8 \espressivo r16.
                \repeat tremolo 2 c64 \harmonic ~ \bar "!"
            \repeat tremolo 16 c64 \harmonic \espressivo
    | r8 \segno r16 \clef "tenor" <a b>16 ^"II" ~ 4 ~ \espressivo \bar "!"
        16 r16 r8 \footnote \markup \small "5" #'(-1.5 . 2) "" a8-"pizz." \halfopen \laissezVibrer \fermata \bar ":|."
    %    \hideNotes a4

    %\bar "!"
    \mark \markup { \box \bold "B" }
    \hideNotes a4 \unHideNotes \bar ""
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
        \breathe \bar "!"

        \repeat tremolo 16
            \footnote #'(-3 . 2) \air-sound-note
            cis64~ \p
            ^\markup {\small \concat { \italic "m. sul pont."} }
            ^\markup { \small "II" }
            \fermata
            \espressivo
        \mark "freely"
        \repeat tremolo 4 cis32~ \>
        \bar "!"

        \cross-head cis8 \! r8
    | r8 \fermata
        <a a>8~ ^\markup { \small { "II:" \italic "senza vibrato, senza sord." } } \pp
        <a a>8~ <a~ a> ^\markup { \small \italic "poco vibrato" }
        \bar "!"
        \tempo 4 = 84
        a4.~ \bar "!" a8 a--
    | b4. c!8 4.~ 4~
    | \cross-head c8 \! \cross-head a4~ 8 a4.~ \mark "poco string." a8 8
    | <a b>4. \< <a c>8 <a c>4. a8-- ( <a d>-- )
    | 
      <<
        {
            <a d>4-- \mp \< <d, a'>4 ~
                <d a'>4 ~
                \mark "poco allarg."
                <d a'>8 \mf \laissezVibrer r8 a'-- \p
        }
        \new Staff \with {
            \remove "Time_signature_engraver"
            alignAboveContext = "cello-a"
        } {
            \clef "tenor" r2 r4
            \tuplet 3/2 {
                a32 _[ \open \pp -\markup {
                    \small { "I," \italic "flag., molto flautando" }
                } ( \clef "treble" a' e'
            }
            \ottava 1
            \tuplet 9/8 { a64 cis e g a g e cis a }
            \ottava 0
            \tuplet 3/2 { e32 a, \clef "tenor" a, ] \open ~ ) }
            a8
        }
    >>
    \break
    | \compoundMeter #'((3 8) (2 8))
        \set beatStructure = 3,2
        \mark "string."
        \once \override Hairpin.to-barline = ##f 
        <a a>4---> \< <a a>8-- <a a>-- ( <d a>-- )
    | \compoundMeter #'((4 8) (3 8) (2 8))
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = 2,2,3,2
      <<
        {
            \clef "bass" <c,, g'>4 \sfp
                    _\markup {\small \italic "cresc."}
                    ^\markup { \updownbow } ~
                <c g'>8 ~
                \mark "riten."
                <c g'>16 \ff \laissezVibrer r16
                <g' d'>8 \p \laissezVibrer a'8 ~ \< a8 
                \clef "treble" a'4-- \mp
        }
        \new Staff \with {
            %\remove "Time_signature_engraver"
            alignAboveContext = "cello-a"
        } {
            \clef "tenor" r4 r8
            \tuplet 3/2 { r32 [ d,,32 \p  -\markup {
                \small \italic \whiteout "molto legato, flautando"
            } \> ( g }
            a64 b
            \tuplet 6/4 {
                d \clef "treble" g a )
                \bar "!"
                b ( \pp \< a g
            }
            \clef "tenor" d b
            \tuplet 3/2 { a32 g d ~ }
            d8 ) \p \laissezVibrer r8 ]
            \bar "!"
            r4
        }
      >>
    %| \tempo 4 = 84
    %    b'4. c!8 4.~ 4~
    %| c8 a4~ 8 a4.~ a8 8
    | \tempo 4 = 84
        b''4. \< c8 <f, c'>4. ~ 8 d'
    | \compoundMeter #'((4 8) (2 8))
        <a d>4 ~ 8 g8 g ~ <g e'>
    | <g e'>4 ~ 4 \breathe f8-- <f e'>--
    | <f e'>2 ~ <f d'>4 \fermata \breathe
    | r8 \clef "tenor" c8 ~ c8 ( b )
        
}

