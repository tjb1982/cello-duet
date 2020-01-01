air-sound-note = \markup \wordwrap \small {
    The articulation of this \c-sharp (i.e., the duration comprising all three tied notes) should transition from \italic {molto ponticello} to "\"pitch-colored\" noise." This should be made by first becoming so \italic { sul pont. } that the pitch becomes almost indiscernable (a.k.a., \concat { \italic "tonlos" ";" } "however," the mute will prevent the bow from actually playing on top of the "bridge)," and then lift the left-hand stopping finger so that it isn't stopping the string on the fingerboard, but is instead touching the \c-sharp as if it were a harmonic node, while also touching one or more fingers in a similar manner behind this location, which prevents the possibility of any natural harmonic sounding. Give it lots of bow, slowing the tremolo down gradually to end on a single down-bow. But be very careful not to bow hard enough to produce "\"scratch tone\"" effects; the whole event should ultimately be "\"pretty.\"" And although there's a lot of process here, this gesture shouldn't last an unduly long time.
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
            \small \italic "poco vibrato, con sord."
        } ~ \< \bar "!"
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
                \override TextSpanner.bound-details.left.text = \rustling-text 
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
                r8 [ \tuplet 3/2 {
                    \once \override Slur.positions = #'(0 . 6.5)
                        a32 ^\< ( b64 c ^\! ^\> a-. ) b-! ^\! } r16 ]
                    r32 [ c ( a-. ) b-! c-! r32 r32 a64-! b-! ] \bar "!"
                r16. c64 ^\< [ ( a \tuplet 5/4 { b16-. ) c-! ^\! ^\> a-! b-! c-! ^\! ] } \bar "!"
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
                a8 [ r16. b32 ^\< ] ~ \tuplet 5/4 {
                    b16 [ c32-. ( a32-. ) b16-! c-! a64-. ( b-. c-. a-. ) ]
                } \bar "!"
                \repeat tremolo 12 <a a>64 ^\! ^\> -\markup {
                    \small \italic "trem."} [ ( a16-. ) r16 b16-! ^\! \stopTextSpan ] \bar "!"
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
        \override TextSpanner.bound-details.left.text = \markup {\small \italic "flautando"}
        r32 \harmonicsOn \clef "bass" f,16.-"arco" \startTextSpan
                ~ 8 \espressivo \harmonicsOff r4 \bar "!"
            r16. \clef "tenor" <a' b>32 ~ 8 \espressivo \stopTextSpan r16.
                \repeat tremolo 2 c64 \harmonic ~ \bar "!"
            \repeat tremolo 16 c64 \harmonic \espressivo
    |
        r8 \segno r16 \clef "tenor" <a b>16 \startTextSpan ~ 4 ~ \espressivo
            \bar "!"
        16 \stopTextSpan r16 r8
            \footnote \markup \small "5" #'(-1.5 . 2) "" a8
                -"pizz." \halfopen \laissezVibrer \fermata
            \bar ":|."
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
            cis64~ \mp
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
        \tempo 8 = 84
        a4.~ \bar "!" a8 a-- \<
    | b4. c!8 \bar "!"
        \once \override Hairpin.to-barline = ##f 
        4.~ \p \> \bar "!" 4~
    | \cross-head c8 \! \cross-head a4~ \< 8 \bar "!" a4.~ \mp \> \mark "poco string." \bar "!" a8 8
    | <a b>4. \pp \< <a c>8 \bar "!" <a c>4. \bar "!" a8-- ( <a d>-- )
    | 
      <a d>4-- \mp \< <d, a'>4 ~
      <<
        {
            \voiceTwo
                <d a'>4 ~
                \mark "poco allarg."
                <d \laissezVibrer a'>8 \mf r8 a'-- \p
        }
        \new Staff = "a-top" \with {
            \remove "Time_signature_engraver"
            alignAboveContext = "cello-a"
        } {
            \override TextScript.padding = #6
            \override Staff.OttavaBracket.padding = #1.5
            \voiceOne
            \clef "treble" s4
            \override TupletBracket.positions = #'(12 . 14)
            \tuplet 3/2 {
                \once \override Stem.details.beamed-lengths = #'(18)
                \change Staff = "cello-a" a32 [ \open (
                \change Staff = "a-top" \oneVoice a' \pp _\markup {
                    \whiteout \small { "I," \italic "flag., molto flautando" }
                } e'
            }
            \revert TupletBracket.positions
            \ottava 1
            \tuplet 9/8 { a64 cis e g a g e cis a }
            \ottava 0
            \override TupletBracket.positions = #'(-12.5 . -12.5)
            %\override TupletBracket.stencil = ##f
            \tuplet 3/2 { e32 a,
                \once \override Stem.details.beamed-lengths = #'(18)
                \change Staff = "cello-a" \voiceOne a, ] \open ~ )
            }
            \revert TupletBracket.direction
            \revert TupletBracket.positions
            a8
        }
    >>
    \oneVoice
    | \compoundMeter #'((3 8) (2 8))
        \set beatStructure = 3,2
        \mark "m. string."
        \once \override Hairpin.to-barline = ##f 
        <a a>4---> ( \< <a a>8-- ) \bar "!" <a a>-- ( <d a>-- )
    | \compoundMeter #'((4 8) (3 8) (2 8))
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = 2,2,3,2
      <<
        {
            \clef "bass" <c,, g'>4 \sfp
                    _\markup {\italic "cresc."}
                    ^\markup { \updownbow } ~
                <c g'>8 ~
                \mark "allarg."
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
            \tempo 8 = 84
            r4
        }
      >>
    %| \tempo 8 = 84
    %    b'4. c!8 4.~ 4~
    %| c8 a4~ 8 a4.~ a8 8
    | b''4. \cresc c8 \bar "!" <f, c'>4. ~ \bar "!" 8 d'
    | \compoundMeter #'((4 8) (2 8))
        <a d>4 ~ 8 g8 g ~ <g e'>
    | <g e'>4 \ff ~ 4 \breathe f8-- <f e'>--
    | <f e'>4 ( ~ 4 ~ <f d'>4 ) \fermata \breathe
    | r2 \mark "very broad and warm" r4
    | \clef "bass" <<
        {
            \voiceOne
            d,! \mf des, \fermata \breathe f' ( ^~
            | f e4. ) \fermata \breathe r8
            | c'4 ~ 4 \breathe \clef "tenor" \cross-head g8 ~ 8 \mp ~
            | 8 ~ \cross-head 8 \cross-head b \cresc ~ 8 ~ 4
            | b4 \f ( c ) \fermata \breathe r4 \!
        }
        \new Voice {
            \voiceTwo
            g,8 ( aes )  aes4 \fermata \breathe g \f (
            | c,! ~ c4. ) \fermata \breathe r8
            | c f'8 ~ 4 \breathe
                \footnote #'(-1.5 . -5) \swell-note \cross-head c8 ~ 8 ~
            | 8 ~ \cross-head 8 \cross-head e ~ 8 ~ 4
            | e ~ 4 \fermata \breathe r4
        }
    >>
    <<
        {
            \voiceOne
            | \clef "treble" c''4 ^\p -\angelic ( ~
                4 ~ 4 ~
            | \mark "allarg." 4 ~ 4 ~ 8 ~ 8 ^\ten ~
            %| b4 ^\> \fermata ) \breathe r4 \!
        }
        \new Voice {
            \voiceTwo
            | r4 r r
            | f,4 \p ( e d8 ~ 8 _\ten )
            %| r4 \fermata \breathe
        }
    >>
    | \oneVoice
        \compoundMeter #'((4 8) (3 8) (2 8))
        \set subdivideBeams = ##t
        \set baseMoment = #(ly:make-moment 1/8)
        \set beatStructure = 2,2,3,2
        c'8 \> \fermata b8 \! ) \fermata \breathe
            \mark "m. string." r8 ~ r8
            \repeat tremolo 2 { \cross-head <cis, dis'>16 \cresc }
            \repeat unfold 2 { \repeat tremolo 2 <cis dis'>16 }
        \mark \letter-c
          \bar "!"
          \hideNotes 8 \! \unHideNotes
}

cello-a-rehearsal-c = \new Voice \relative c {
    \once \omit Staff.TimeSignature
    \compoundMeter #'((4 8) (3 8) (2 8))
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 4,3,2
    \clef "treble"
    \key a \major
    \partial 4
        \repeat tremolo 2 <cis' dis'>16 \cresc
        \repeat tremolo 2 <cis dis'>16
    | \override Score.RehearsalMark.self-alignment-X = #LEFT
        \mark "allarg."
        \repeat tremolo 2 <cis dis'>16 \f
        \repeat tremolo 2 <cis dis'>16 \dim 
        \repeat unfold 2 { \repeat tremolo 2 <cis dis'>16 }
        \bar"!"
        \repeat unfold 2 { \repeat tremolo 2 <cis dis'>16 }
        dis'8 \p ~
        \bar "!"
        \tempo "come prima" 8 = 72-76
        \tuplet 3/2 { 16 e-- -\markup {\small \italic "sweetly"} dis'-- } 8 \< ~
    |
        \tuplet 5/4 { 8 \fermata 8 e-> \! \> cis8. e,16 ( }
        \bar "!"
        b'8.. ) dis,32 ( gis8  ~
        \bar "!"
        \tuplet 13/8 { 32 \! ) a ( \clef "tenor" a,, cis e gis a fis e ) \clef "bass" a, \< ( fis b, e }
    |
        \tuplet 5/4 { d! ) fis, ( d' cis ) a ( } cis8 \! \> e,8. ) fis!16 (
        \bar "!"
        d!8 b'4 \fermata ) \!
        \bar "!"
        r16 \clef "tenor" cis
            -\markup { \small \italic "con sord." }
            \pp ( a'16. ) b,32 (
    |
        cis'8 ) \breathe \tuplet 3/2 { cis,16 [ ( e a } gis8. ) gis'16-- ]
        \bar "!"
        fis4. \trill \espressivo \breathe
        \bar "!"
        r8 \fermata \clef "bass" d,,8 \< (
    |
        cis'16. ) d,32 ( e8.. ) cis'32 ~ 8 ~
        \bar "!"
        32 d-. b' ( a ) \tuplet 3/2 { e16-. \mf \> fis' ( e ) }
            \tuplet 3/2 { a,-- \open \clef "treble" \acciaccatura gis' e'-- dis ~ }
        \bar "!"
        4 \p \trill
    |
        \pitchedTrill cis2 _~ \pp \espressivo \startTrillSpan dis
        \bar "!"
        \cross-head 8 \stopTrillSpan \breathe \clef "bass" fis,, \mp (
        <g,! _\laissezVibrer a'~>8 \espressivo
        \bar "!"
        <a' e'>4 ) \fermata
    |
        
}

