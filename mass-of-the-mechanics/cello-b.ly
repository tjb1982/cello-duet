cello-b = \new Voice \relative c {
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \time 2/4
    \clef "bass"
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 2,2,2,2

    g8.^\markup { \small \italic "warm, grand" } ~ \open \f _( \tuplet 3/2 { g32 d' a' } d4~ )
    | d8~ 32. a64 ( g d e a d8~ ) \tuplet 3/2 { d16 a-- ( d,-- ) }
    | \acciaccatura { <g, d' a'>8 } d''4~ \> 4~ \p
    | d8 [ e128 ( d e d~ ) d32~ d16~ ] 4~
    | \time 3/4 8~ \< 16
        \tuplet 3/2 { a32^\markup { \small \italic "ad lib., inflorescent" } ( d, g, ) }
        \tuplet 9/8 { g64 ( \f d' a' d ) e ( d a d, g, ) }
        \tuplet 13/8 { fis ( g d' a' d ) e ( d a d, \open d ) fis, ( d' d \open ) }
        g,8.~ \tuplet 3/2 { g32 d'-. ( a'-. ) }
    | fis'4 \> ~ 8 fis128 ( e fis e~ ) e32~ e16~ \p e4~
    | 16. \tuplet 3/2 { e64 ( d cis } d8~ ) d8.~ \< \tuplet 3/2 { d32 a-. ( d,-. ) } a4-- \mf \>
    | g8 \p r16 r64 \clef "tenor" d' \mf ( a' d ) e32-- gis-- a-- fis-- gis16~ \< \tuplet 3/2 { gis32 fis-. ( e-. ) }
        d64^\markup { \small \italic "ad lib." }
        ( \clef "bass" a d, d ) fis, ( g! d' a' )
        d,,^\markup {\small \italic "ten." } \f \> ( d' d a' \clef "tenor" d e  gis a
    | b8 \p ) \breathe \clef "bass" e,,,16-- \mp ( d-- )
        c8 r32 \clef "tenor" a''64 ( \p \< d e a g f! e4 \mp \>
    | \time 2/4 d8 \p ) r8 d128 \mp [ ( c d c~ ) c32~ c16. ( \< r32 b16-- ) ]
    | a8-- ( \clef "bass" g,-- \mf ) r g'-- \f
    | f->-- f,~ f16 \tuplet 3/2 { g32 \> ( a d ) } \tuplet 3/2 { a'16-- ( b-- d-- ) }
    | e16. \pp \< ( d64 a g32-. ) fis-. d-. a-.
        g16 \p fis''8-- \pp \< ( \mark "poco riten." e16-- )
    | d8-- \p \breathe r8 \mark "string."
        \tuplet 3/2 { a8-- \downbow \mf \< b-- \upbow ( c!-- ) } 
    | \tempo 8 = 88-92
        d16-- \upbow \ff d,,8-> \sf \downbow r16 r c''!8 \sf f,,!16
    | r16 bes'8 \sf bes,,16 \mark \poco-allarg \tuplet 3/2 { ees8 \rfz \> ( d'8. ) \clef "tenor" d'16 }
    | \acciaccatura { gis8^> } \mark \tempo-one a4. \harmonic \p \clef "bass" d,,,8-. \sf
    | \clef "tenor" \acciaccatura { g''!^> } a4. \harmonic \p \clef "bass" d,,,8-. \sf
    | \clef "tenor" \acciaccatura { gis'' } a4. \harmonic \p \clef "bass" c,,,!8 ( \< \upbow
    | bes8.~ \f \tuplet 3/2 { bes32 f'! c'! ) } \acciaccatura <d! a'>8 d'!4~
    | d8.-\markup { \italic "cresc. molto" } ~ 32. \tuplet 3/2 { a128 ( d, a' } d8~ ) \tuplet 3/2 { d16 <a d,>-> <d, g,>-> } 
    | \time 3/4
        \acciaccatura <
            bes,
            \laissezVibrer g'
            \laissezVibrer d'
            \laissezVibrer a'
        >8 d''4~ \ff 4~ \> d8
        \once \override Hairpin.to-barline = ##f 
            g, \( ( \p \<
    | \time 2/4 f!4 ) \mf \> e' (
    | d8. \p ) \) r16 d128 [ ( c! d c~ ) 32~ c16. \< ( r32 b!16-- ] )
    | a8-- \mp ( g,-- ) r8 a-- \pp \<
    | d,8.~ ( d64 d' d a' d4~ \p
    | d8.~ ) 64 a64 ( d, a' d8~ \> \tuplet 3/2 { d16 a-. d,-. ) }
    | <<
        \new Voice {
            \voiceOne
            r8 d8~ d8 r8
            | r2~ | r8
        }
        {
            \voiceTwo
            d,4. \pp \< ( bes8--
            | c2~ \! \>
            | c8 \! )
        }
    >> d'8 \rest d4 \rest \bar "|."
}
