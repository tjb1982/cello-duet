\include "common.ly"

transposing-example = {
        \tempo 8 = 88-92
        <a d>16-- \upbow \ff
                \tag #'sounding { <d,, g>8-> \sf \downbow }
                \tag #'transposing { <\trp e g>8-> \sf \downbow }
        r16 r c''!8 \sf
            \tag #'sounding { f,,!16 }
            \tag #'transposing { \trp g16 }
    | r16 bes'8 \sf
            \tag #'sounding { bes,,16 \mark \poco-allarg \tuplet 3/2 { ees8 \rfz \> ( d'8. ) \clef "tenor" d'16 } }
            \tag #'transposing {
                \trp c,,16 \mark \poco-allarg \tuplet 3/2 { \trp f!8 \rfz \> ( d'8. ) \clef "tenor" d'16 }
            }
    | \acciaccatura { gis8^> } \mark \tempo-one a4. \harmonic \p \clef "bass"
}

cello-b = \new Voice \relative c {
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \time 2/4
    \clef "bass"
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 2,2,2,2

    g8. \upbow ^\markup { \small \italic "warm, grand" } ~ \open \f %{ _( %} \tuplet 3/2 { g32 d'-- a'-- } d4~
    | d8~ \> 32. %{ ) %} \p \fermata a64 ( g d e a d8 \< ~ \tuplet 3/2 { d16 ) a-- d,-- }
    | \slashedGrace <g, \laissezVibrer d' \laissezVibrer a'>8 d''4 \f \> ~ 4~ \p
    | d8 [ e128 ( d e d~ ) d32~ d16~ ] 4~
    | \time 3/4 8~ \< 16
        \tuplet 3/2 { a32^\markup { \small \italic "ad lib., inflorescent" } ( d, g, ) }
        \tuplet 9/8 { g64 ( \f d' a' d ) e ( d a d, g, ) }
        \tuplet 13/8 {
            \tag #'sounding { fis ( }
            \tag #'transposing { \trp gis ( }
            g \> d' a' d ) e ( d a d, \open d )
            \tag #'sounding { fis, ( }
            \tag #'transposing { \trp gis ( }
            d' d \open )
        }
        g,8.~ \p \< \tuplet 3/2 { g32 d'-! ( a'-! ) }
    | fis'4 \mf \> ~ 8 fis128 ( e fis e~ ) e32~ e16~ \p e4~
    | 16. \tuplet 3/2 { e64 ( d cis } d8~ ) d8.~ \< \tuplet 3/2 { d32 a-. ( d,-. ) } a4-- \mf \>
    | g8 \p r16
            %r64 \clef "tenor" d' \mf ( a' d ) e32-- gis-- a-- fis-- gis16~ \< \tuplet 3/2 { gis32 fis-. ( e-. ) }
            r32 \clef "tenor" d' \mf ( a' d ) e64-- gis-- a-- fis-- gis16~ \> \tuplet 3/2 { gis32 \p \< fis-. ( e-. ) }
        d64^\markup { \small \italic "ad lib." }
        ( \clef "bass" a d, d )
            \tag #'sounding { fis, ( }
            \tag #'transposing { \trp gis ( }
        g! d' a' )
        %d,,^\markup {\small \italic "ten." } \f \> (
            \tag #'sounding { d,,^\markup {\small \italic "ten."} \f \> ( }
            \tag #'transposing { \trp e^\markup {\small \italic "ten."} \f \> ( }
        d' d a' \clef "tenor" d e  gis a
    | b8 \p ) \breathe \clef "bass"
            \tag #'sounding { e,,,16-- \mp ( d-- ) c8 }
            \tag #'transposing {
                \trp fis16-- \mp ( \trp e-- ) \trp d8
            }
        r32 \clef "tenor" a''64 ( \p \< d e a g f! e4 \mp \>
    | \time 2/4 d8 \p ) r8 d128 \mp [ ( c d c~ ) c32~ c16. ( \< r32 b16-- ) ]
    | a8-- \espressivo \mf \> ( \clef "bass"
        g,-- \! )
        r g'---> \f \downbow
    | f---> \downbow
            \tag #'sounding { f,8---> \downbow }
            \tag #'transposing { \trp g8---> \downbow }
        r8 \mark "poco riten." 
        r8
        %\tuplet 3/2 { g32 \open \pp ( a d ) } \tuplet 3/2 { a'16-- ( b-- d-- ) }
    | e''16. \pp \< ( d64 a g32-. ) fis-. d-. a-.
        g16 \open \p \laissezVibrer fis''8-- \pp \< ( e16-- )
    | d8-- \p \fermata \breathe r8 \mark "string."
        \tuplet 3/2 { <a a>8-- \downbow \mf \< <a b>-- \upbow ( <a c!>-- ) } 
    |
        \transposing-example
%        \tempo 8 = 88-92
%        <a d>16-- \upbow \ff
%                \tag #'sounding { <d,, g>8-> \sf \downbow }
%                \tag #'transposing { <\trp e g>8-> \sf \downbow }
%        r16 r c''!8 \sf
%            \tag #'sounding { f,,!16 }
%            \tag #'transposing { \trp g16 }
%    | r16 bes'8 \sf
%            \tag #'sounding { bes,,16 \mark \poco-allarg \tuplet 3/2 { ees8 \rfz \> ( d'8. ) \clef "tenor" d'16 } }
%            \tag #'transposing {
%                \trp c,,16 \mark \poco-allarg \tuplet 3/2 { \trp f!8 \rfz \> ( d'8. ) \clef "tenor" d'16 }
%            }
%    | \acciaccatura { gis8^> } \mark \tempo-one a4. \harmonic \p \clef "bass"
            \tag #'sounding { d,,,8-. \sf }
            \tag #'transposing { \trp e8-. \sf }
    | \clef "tenor" \acciaccatura { g''!^> } a4. \harmonic \p \clef "bass"
            \tag #'sounding { d,,,8-. \sf }
            \tag #'transposing { \trp e8-. \sf }
    | \clef "tenor" \acciaccatura { gis'' } a4. \harmonic \p \clef "bass"
            \tag #'sounding { c,,,!8 ( \< \upbow }
            \tag #'transposing {
                \trp d8 ( \< \upbow
            }
    |
            \tag #'sounding { bes8.~ \f \tuplet 3/2 { bes32 f'! c'! ) } }
            \tag #'transposing {
                \trp c,8.~ \f \tuplet 3/2 { \trp c32 ) \trp g'-- c!-- }
            }
            \acciaccatura <d! a'>8 d'!4~
    | d8.-\markup { \italic "cresc. molto" } ~ 32. \tuplet 3/2 { a128 ( d, a' } d8~ ) \tuplet 3/2 { d16 <a d,>-> <d, g,>-> } 
    %| \time 3/4
    %        \tag #'sounding {
    %            \acciaccatura <
    %                bes,
    %                \laissezVibrer g'
    %                \laissezVibrer d'
    %                \laissezVibrer a'
    %            >8
    %        }
    %        \tag #'transposing {
    %            \acciaccatura <
    %                \tweak NoteHead.style #'diamond c \laissezVibrer
    %                g' \laissezVibrer
    %                d' \laissezVibrer
    %                a'
    %            >8
    %        }
    %    d''4~ \ff 4~ \> d8
    %    \once \override Hairpin.to-barline = ##f 
    %        g, \( ( \p \<
    | \time 3/4
            \tag #'sounding {
                <
                    bes, \laissezVibrer
                    g' \laissezVibrer
                >8 \ff
            }
            \tag #'transposing {
                <
                    \tweak NoteHead.style #'diamond c \laissezVibrer
                    g' \laissezVibrer
                >8 \ff
            }
            \grace
                <
                    d' \laissezVibrer
                    a'
                >8
            d'8~ 4~ \> d8
        \once \override Hairpin.to-barline = ##f 
            g, \( ( \p \<
    | \time 2/4
        f!4 ) \mf \>
        e' (
    | d8. \p ) \) r16 d128 [ ( c d c~ ) 32~ c16. \< ( r32 b16-- ] )
    | a8-- \mp \> ( \clef "bass" g,-- \! ) r8 a-- \pp
    |
            \tag #'sounding { d,8.~ \cresc ( d64 }
            \tag #'transposing { \trp e8.~ \cresc ( \trp e64 }
        d' d a' d4~
    | d8.~ 64 ) \p a64 ( d, a' d8~ \> \tuplet 3/2 { d16 a-. d,-. ) }
    | <<
        \new Voice {
            \voiceOne
            r8 d8~ d8 r8
            %| r2~ | r8
            | g,2 \open ~
            | g8
        }
        {
            \voiceTwo
            \tag #'sounding {
                d4. \pp \< ( bes8--
                | c2~ \! \>
                | c8 \! )
            }
            \tag #'transposing {
                \trp e4. \pp \< ( \trp c8--
                | \trp d2~ \! \>
                | \trp d8 \! )
            }
        }
    >> d''8 \rest d4 \rest \bar "|."
}
