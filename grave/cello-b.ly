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
        The left hand should become more and more percussive here \concat {"(i.e., " "\"hammer- on/off\""")" }, foreshadowing the normal pizzicatos that follow, even while the bowing right hand diminishes the volume of the pitches to \concat { \italic niente . }
    }
}

noteaboutmf = \markup {
\wordwrap \small {
                    This is the only \dynamic mf in the A section, and the only dynamic above \concat { \dynamic p "." } The intention is for it to stick out somewhat.
    }
}

cello-b = \new Voice \relative c' {
    \tempo "Grave" 8 = 72-76
    \compoundMeter #'((4 8) (3 8) (2 8))
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 4,3,2
    \clef "tenor"
    r4 \footnote #'(-2 . 2) \markup{ \wordwrap \small {
            Notehead "\"x\"" here means \concat { \italic niente "." }
        } }
        \cross-head a4^"II"^\markup \whiteout {\small \italic "poco vibrato"}
             -\markup {\small \italic "con sord."} ~ \< a4. \pp ~ a4~
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
    <a b>4-- ^\markup \sempre-ad-lib \p \> <a a>4-- \bar "!"
        a4. \fermata \breathe \bar "!"
        \once \override Hairpin.to-barline = ##f 
        a8.-- \pp \< ( a16-- )
    %2
    | b8 \p \> ( a4. ) \bar "!"
        a4.-- ( \pp \< \bar "!"
        \tuplet 3/2 { a8-- g-- ) b  ( }
    %3
    | a2~ \p \> \startTrillSpan \fermata \bar "!"
        \cross-head a8 \! \stopTrillSpan )
        a4-- \pp \espressivo \startTextSpan ( \bar "!"
        g8.-- ) r16
    %4
    | b8 ( a4 \espressivo ) r8 \bar "!"
        g4.-- \espressivo \bar "!"
        r8
        \once \override Hairpin.to-barline = ##f 
        b8 ( \<
    %5
    | a2~ \p \startTrillSpan \> \fermata \bar "!"
        \cross-head a8 \stopTrillSpan \! ) r8 a8~ \pp \< ( \bar "!"
        \tuplet 3/2 { a16 g b }
            \tuplet 3/2 { a32 \p \> g b }
            \repeat percent 2 {
                \tuplet 3/2 { \footnote #'(0 . 3) \left-hand-pizz-note a64 g b }
            }
    %6
    | \autoBeamOff \cross-head a8 \stopTextSpan \! ) \autoBeamOn \breathe
        <<
            { \voiceOne
                s4 s8
                \bar "!"
                \footnote #'(-1.5 . 2) \markup \noteaboutmf
                b8 \fermata \laissezVibrer \mf -\markup{
                    \small \concat { "II, "  \italic "m. vibr." }
                }
            }
            \new Voice { \voiceTwo
                a4 \laissezVibrer \p ^"pizz."
                \harmonicsOn g8 ^"III" \pp \laissezVibrer s8 \harmonicsOff
                \footnote #'(1.5 . -2) \square-pizz-note a4 \pp \laissezVibrer ^\halfopen
                \bar "!"
            }
        >>
        \oneVoice
        r8 \repeat tremolo 8 a64 \pp ^"arco"^\markup { \small \italic "ricochet" } ~ 
        \break
    %7
    | \override TextSpanner.bound-details.left.text = \markup {\small "sul pont." }
        4\espressivo \fermata r32 g-. \startTextSpan ( b16-.-> ) r16
        \acciaccatura b8 \p \tuplet 3/2 { a32-.-> ( g-. b-. ) } \bar "!"
            a4.~ \> \startTrillSpan \bar "!"
            \cross-head a8 \!  \stopTrillSpan \stopTextSpan
        %    r8
        \override TextSpanner.bound-details.left.text = \markup {
            \small \concat {"molto sul tasto, punta d'arco" \upright "; rustling" }
        }
        <<
            {
                \voiceOne
                r32 [ g16 ^\pp \startTextSpan ( b32-. ) ]
            }
            \new Voice {
                \voiceTwo
                \footnote \markup \teeny 2 #'(1 . -3) "" a8-+ \pp
            }
        >>
    %8
    |
        <<
            {
                \voiceOne
                r8 [ \tuplet 3/2 { a32 ( g64-. b-. a-. ) g-! } r16 ]
                    r32 [ b ( a-. ) g-! b-! r32 r32 a64-! g-! ] \bar "!"
                r16. b64 [ ( a \tuplet 5/4 { g16-. ) b-! a-! g-! b-! ] } \bar "!"
                r8. \repeat tremolo 4 <a a>64 -\markup {\small \italic "ricochet" } ~
            }
            \new Voice {
                \voiceTwo
                a8-+ r8 r4
                a8-+ r r
                a8-+ r
            }
        >>
    %9
    | 
        <<
            {
                \voiceOne
                a8 [ r16. g32 ] ~ \tuplet 5/4 {
                        g16 [ b32-. ( a32-. ) g16-! b-! a64-. ( g-. b-. a-. ) \stopTextSpan ]
                } \bar "!"
                \override TextSpanner.bound-details.left.text = "(cont.)"
                \repeat tremolo 12 <a g>64 -\markup {\small \italic "trem."} \startTextSpan [ (
                    b16-. ) r16 a-! \stopTextSpan ] \bar "!"
                \tuplet 3/2 { r8 g-"pizz." \harmonic \laissezVibrer r8 }
            }
            \new Voice {
                \voiceTwo
                a8-+ r8 r4
                r8 r r
                a8-+ r
            }
        >>
    %10
    | \oneVoice
        r32 <a b>16.^"arco" -\markup {\small \italic "flautando"} ~ 8 \espressivo r4 \bar "!"
        r16. <b g>32 ~ 8 \espressivo r16.
            \repeat tremolo 2 a64 ~ \bar "!"
        \repeat tremolo 16 a64 \espressivo
    %11
    | r16. <a g>32 ~ 8 \espressivo r4 \bar "!"
            <a b>4 \espressivo r16
                a16 ~ \bar "!"
            a4 \espressivo
    %12
    | r8 \cross-head a8~
            -\markup {\small \italic "senza sord.; poco vibrato, come prima"}
        a4 \pp \bar "!"
        a4-- ( 8~ ) \segno
            \mark \markup { \box \bold "B" }
            \bar "!" \hideNotes a8 \unHideNotes
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
        \appoggiatura { \tuplet 3/2 { cis16 \< d cis } \tuplet 5/4 { c32 b cis, a' g }
            \clef "tenor" \tuplet 9/8 { fis64 \! \> e d a c b a g b } }
        a8~ \< (
            \tuplet 3/2 { a32 g b }
            \repeat unfold 2 { \tuplet 3/2 { a64 g b } }
            \tempo 4 = 84
            a4. \p \trill \> )
        a4~
    | 4 \pp g b4. a8 g
    | g4 a4 d,4. a'4~
    | <a a>4 \< <a g> <a b>4 <a a>8 <a d,>4
    | <<
        {
            \clef "bass" <g, d'>4-- \mp \<
                <g d'>4 ~ <g d'>8 ~
                <g d'>8 \mf \laissezVibrer r8 a'4 \p \open
        }
        \new Staff \with {
            \remove "Time_signature_engraver"
            alignAboveContext = "cello-b"
        } {
            \clef "tenor"
            r2 \bar "!"
            r8
            \tuplet 3/2 {
                d,32 \open \pp -\markup {
                    \small { "II," \italic "flag., molto flautando" }
                } ( d' \clef "treble" a'
            }
            \tuplet 9/8 { d64 fis a c d c a fis d }
            \tuplet 3/2 { a32 \clef "tenor" d, d, \open ~ ) }
            \bar "!"
            d8 a'-- \p
        }
    >>
    | \compoundMeter #'((3 8) (2 8))
        \set beatStructure = 3,2
        \once \override Hairpin.to-barline = ##f 
        \clef "bass" <a a>4---> \< <d, a'>8 <d a'> <g, d'>
    | \compoundMeter #'((4 8) (3 8) (2 8))
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = 2,2,3,2
      <<
        {
            <g d'>4 ~ \sfp
                    _\markup {\small \italic "cresc."}
                    ^\markup { \updownbow }
                <g d'>8 ~ <g d'>16 \ff \laissezVibrer r16
                <g d'>8 \p \laissezVibrer a'8 ^~ \< a8 ~
                a8 \clef "treble" a'8-- \mp
        }
        \new Staff \with {
            %\remove "Time_signature_engraver"
            alignAboveContext = "cello-b"
        } {
            \clef "tenor" r4 r8
            \tuplet 3/2 { r32 [ a,32 ( \p -\markup {
                \small \italic \whiteout "molto legato, flautando"
            } \> b }
            \clef "treble" d64 g
            \tuplet 6/4 {
                a b d )
                \bar "!"
                g ( \pp \< d b
            }
            a g
            \tuplet 3/2 { d32 \clef "tenor" b a ~ }
            a8 ) \p \laissezVibrer r8 ]
            \bar "!"
            r4
        }
      >>
    %| \tempo 4 = 84
    %    4 g b4. a8 g
    %| g4 a4 d,4. a'4~
    a'4 \< g8 ~ <g b> <g b>4. <a e>4
    | \compoundMeter #'((4 8) (2 8))
        <d, g>4 ~ 8 ~ d8 g,4--
    | <c f>4 ~ 4 \breathe \clef "bass" c4 \glissando
    | bes,,2 ~ <bes bes''>4
    | r4 <g d'> ~
    
}

