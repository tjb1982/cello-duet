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
                    This is the only \dynamic mf in the \box A section, and the only dynamic above \concat { \dynamic p "." } The intention is for it to stick out somewhat.
    }
}

cello-b = \new Voice \relative c' {
    \tempo "Grave" 8 = 72-76
    \compoundMeter #'((4 8) (3 8) (2 8))
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 4,3,2
    \clef "tenor"
    r4 \footnote #'(-2 . 2) \niente-notehead-note 
        \cross-head a4^"II"^\markup \whiteout {\small \italic "poco vibrato, con sord."}
            ~ \< a4. \pp ~ a4~
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
    | \once \override Hairpin.to-barline = ##f 
        a2~ \p \> \startTrillSpan \fermata \bar "!"
        a8 \stopTrillSpan ) \breathe
        a4-- \pp \espressivo \startTextSpan ( \bar "!"
        g8.-- ) r16
    %4
    | b8 ( a4 \espressivo ) r8 \bar "!"
        g4.-- \espressivo \bar "!"
        r8
        \once \override Hairpin.to-barline = ##f 
        b8 ( \<
    %5
    | \once \override Hairpin.to-barline = ##f 
        a2~ \p \startTrillSpan \> \fermata \bar "!"
        \cross-head a8 \stopTrillSpan \! ) r8 a8~ \pp ( \bar "!"
        \tuplet 3/2 { a16 \< g b }
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
                \footnote #'(-0.5 . 2.0) \markup \noteaboutmf
                b8 \fermata \laissezVibrer \mf -\markup{
                    \small \concat { "II, "  \italic "m. vibr." }
                }
            }
            \new Voice { \voiceTwo
                a4 ^\open \laissezVibrer \p ^"pizz."
                \harmonicsOn g8 ^"III" \pp \laissezVibrer s8 \harmonicsOff
                \footnote #'(1.5 . -2) \square-pizz-note a4 \pp \laissezVibrer ^\halfopen
                \bar "!"
            }
            % XXX: The below voice is 100% here for spacing reasons
            \new Voice {
                \voiceThree
                \absolute {
                    s4. s4 \hideNotes b,,,8 \unHideNotes
                }
            }
        >>
        \oneVoice
        r8 \repeat tremolo 8 a64 \pp ^"arco"^\ricochet ~ 
        %\break
    %7
    | \override TextSpanner.bound-details.left.text = \markup {\small "sul pont." }
        4\espressivo \fermata r32 g-. \startTextSpan ( b16-.-> ) r16
        \acciaccatura b8 \p \tuplet 3/2 { a32-.-> ( g-. b-. ) } \bar "!"
            a4.~ \> \startTrillSpan \bar "!"
            \cross-head a8 \!  \stopTrillSpan \stopTextSpan
        %    r8
        \override TextSpanner.bound-details.left.text = \rustling-text
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
                r8 [ \tuplet 3/2 {
                    \once \override Slur.positions = #'(0 . 6)
                        a32 ^\< ( g64 b ^\! ^\> a-. ) g-! ^\! } r16 ]
                    r32 [ b ( a-. ) g-! b-! r32 r32 a64-! g-! ] \bar "!"
                r16. b64 ^\< [ ( a
                        \tuplet 5/4 { g16-. ) b-! ^\! ^\> a-! g-! b-! ^\! ] } \bar "!"
                r8. \repeat tremolo 4 <a a>64 -\ricochet ~
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
                a8 [ r16. g32 ^\< ] ~ \tuplet 5/4 {
                        g16 [ b32-. ( a32-. ) g16-! b-! a64-. ( g-. b-. a-. ) ]
                } \bar "!"
                \repeat tremolo 12 <a g>64 ^\! ^\> _\markup {\small \italic "trem."} [ (
                    b16-. ) r16 a-! ^\! \stopTextSpan ] \bar "!"
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
        \override TextSpanner.bound-details.left.text = \markup {\small \italic "flautando"}
        r32 <a b>16.^"arco" \startTextSpan ~ 8 \espressivo r4 \bar "!"
        r16. <b g>32 ~ 8 \espressivo \stopTextSpan r16.
            \repeat tremolo 2 a64 ~ \bar "!"
        \repeat tremolo 16 a64 \espressivo
    %11
    | r16. <a g>32 \startTextSpan ~ 8 \espressivo r4 \bar "!"
            <a b>4 \espressivo r16
                a16 ~ \stopTextSpan \bar "!"
            \override TextSpanner.bound-details.left.text = " "
            a4 \startTextSpan \espressivo
    %12
    | r8 \stopTextSpan \cross-head a8~
            -\markup {\small \italic "senza sord.; poco vibrato come prima"}
        a4 \pp \bar "!"
        a4-- ( 8~ ) \segno
            \mark \markup { \box \bold "B" }
            \bar "!" \hideNotes a8 \unHideNotes
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

        \once \override Hairpin.to-barline = ##f 
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
            \tempo 8 = 84
            a4. \p \trill \> )
        a4~
    | 4 \pp \< g b4. a8 g
    | g4 a4 d,4. \mp \> a'4~
    | <a a>4 \pp \< <a g> <a b>4 <a a>8 <a d,>4
    | \clef "bass" <g, d'>4-- \mp -\markup {\italic "cresc."}
        <g d'>4 ~
     <<
        {
            \voiceTwo
            <g d'>8 ~
            <g \laissezVibrer d'>8 \mf r8 a'4 \p \open
        }
        \new Staff = "b-top" \with {
            \remove "Time_signature_engraver"
            alignAboveContext = "cello-b"
        } {
            \voiceOne
            \clef "treble"
            \bar "!"
            s8
            \override TextScript.padding = #8
            \tuplet 3/2 {
                \once \override Stem.details.beamed-lengths = #'(18)
                \change Staff = "cello-b" d,32 \open ( \change Staff = "b-top"
                \oneVoice d' \pp -\markup {
                    \small { "II," \italic "flag., molto flautando" }
                } a'
            }
            \ottava 1
            \tuplet 9/8 { d64 fis a c d c a fis d }
            \ottava 0
            \tuplet 3/2 { a32 d,
                \once \override Stem.details.beamed-lengths = #'(18)
                \voiceOne \change Staff = "cello-b" d, \open ~ )
            }
            \bar "!"
            d8 \change Staff = "cello-b" a'-- \p
        }
    >>
    \oneVoice
    %| <<
    %    {
    %        \clef "bass" <g, d'>4-- \mp -\markup {\italic "cresc."}
    %            <g d'>4 ~ <g d'>8 ~
    %            <g \laissezVibrer d'>8 \mf r8 a'4 \p \open
    %    }
    %    \new Staff \with {
    %        \remove "Time_signature_engraver"
    %        alignAboveContext = "cello-b"
    %    } {
    %        \clef "tenor"
    %        r2 \bar "!"
    %        r8
    %        \tuplet 3/2 {
    %            d,32 \open \pp -\markup {
    %                \small { "II," \italic "flag., molto flautando" }
    %            } ( d' \clef "treble" a'
    %        }
    %        \tuplet 9/8 { d64 fis a c d c a fis d }
    %        \tuplet 3/2 { a32 \clef "tenor" d, d, \open ~ ) }
    %        \bar "!"
    %        d8 a'-- \p
    %    }
    %>>
    | \compoundMeter #'((3 8) (2 8))
        \set beatStructure = 3,2
        \once \override Hairpin.to-barline = ##f 
        \clef "bass" <a a>4---> ( \< <d, a'>8-- ) <d a'>-- ( <g, d'>-- )
    | \compoundMeter #'((4 8) (3 8) (2 8))
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = 2,2,3,2
      <<
        {
            <g d'>4 ~ \sfp
                    _\markup {\italic "cresc."}
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
    %| \tempo 8 = 84
    %    4 g b4. a8 g
    %| g4 a4 d,4. a'4~
    a'4 \cresc g8 ~ <g b> <g b>4. <a e>4
    | \compoundMeter #'((4 8) (2 8))
        <d, g>4 ~ 8 ~ d8 g,4-- \fl
    | <c f>4 \ff ~ 4 \breathe \clef "bass" c8 ~ c8 \glissando
    | bes,,4 ~ <bes bes''> ~ <bes bes''>4 \fermata \breathe
    | r2 \clef "tenor" <<
        {
            \voiceOne
            b''!4 \mf ~
            | b4 ~ b \fermata \breathe b8 \f ( c
            | c4 ~ 4. ) \fermata \breathe b8 ~
            | b8 a ~ a4 \breathe r8 \cross-head \footnote " " #'(-3.75 . 6.25) "" a8 ~
            | a2 \mp \cresc ~ 8  16-- ( d-- )
            | c4 \f ( a ) \fermata \breathe r8
        }
        \new Voice {
            \voiceTwo
            r4
            | r4 f! \fermata \breathe g (
            | g4 ~ 4. ) \fermata \breathe r8
            | r8 c,8 ~ 4 \breathe r8 \cross-head f8 ~
            | f2 ~ 4
            | g4 ( f ) \fermata \breathe r8
        }
    >>
    <<
        {
            \voiceOne
                         b' ^\p -\angelic ( ~
            | b8 a ~ 4 g
            | r4 r4 r8 f ^\ten )
        }
        \new Voice {
            \voiceTwo
                         r8
            | r4 e8 ( c d4
            | a8 f g g' g g, _\ten )
        }
    >>
    | \oneVoice r8 \fermata r8 \fermata \breathe
        \repeat tremolo 2 { \cross-head <a, b'>16 \cresc }
        \repeat tremolo 2 <a b'>16
        \bar "!"
        \repeat unfold 2 { \repeat tremolo 2 <a b'>16 }
        \repeat tremolo 2 <a b'>16 \!
        \override Score.RehearsalMark.self-alignment-X = #LEFT
        \mark \letter-c
          \bar "!"
          \hideNotes 8 \! \unHideNotes
}

cello-b-rehearsal-c = \new Voice \relative c' {
    \once \omit Staff.TimeSignature
    \compoundMeter #'((4 8) (3 8) (2 8))
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 4,3,2
    \clef "tenor"
    \partial 4
        \mark "allarg."
        \repeat tremolo 2 { <a b'>16 \f \dim }
        \repeat tremolo 2 { <a b'>16 }
    |
        \repeat unfold 3 { \repeat tremolo 2 { <a b'>16 } }
        <a b'>8 \p \fermata
        \bar "!"
        \clef "bass" e8 ~ ( <a, e'>4 ) \fermata
        \bar "!"
        r8 e -\markup { \small \italic "con sord." } ~ (
    |
        <e b'>8 <b' e>4 ) \fermata \clef "tenor" <e a>8
        \bar "!"
        <a b>8. <b e>16 <fis' a>4 \fermata \trill \breathe
        \bar "!"
        
}

