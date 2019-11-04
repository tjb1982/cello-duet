cello-b = \new Voice \relative c {
    \time 2/4
    \clef "bass"
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 2,2,2,2

    g8.~ \open \f _( \tuplet 3/2 { g32 d' a' } d4~ )
    %| d4 ) \appoggiatura { a64 g d e a } d8~ \tuplet 3/2 { d16 a-- ( d,-- ) }
    | d8~ 32. a64 ( g d e a d8~ ) \tuplet 3/2 { d16 a-- ( d,-- ) }
    | \acciaccatura { <g, d' a'>8 } d''8~ \fermata \> 8~ 4~ \p
    %| d8 [ \appoggiatura { e64 d e } d8~ ] 4~
    | d8 [ e64 ( d e d~ ) d16~ ] 4~
    %| 4~ \< \appoggiatura {
    %    d64^\markup { \small \italic "ad lib., inflorescent" } a d, g,64 \f d' a' d e
    %    \tuplet 10/8 { e d a d, g, fis g d' a' d }
    %    e d a d, \open d fis, d' d \open
    %} g,8.~ \tuplet 3/2 { g32 d' ( a' ) }
    | \time 3/4 8~ \< 16~
        d64^\markup { \small \italic "ad lib., inflorescent" } ( a d, g,64 )
        \tuplet 9/8 { g ( \f d' a' d e d a d, g, ) }
        \tuplet 13/8 { fis ( g d' a' d ) e ( d a d, \open d ) fis, ( d' d \open ) }
    g,8.~ \tuplet 3/2 { g32 d'-. ( a'-. ) }
    | \time 2/4 fis'4. \> fis64 ( e fis e~ ) e16~ \p
    %| e8 \acciaccatura { fis } e4.
    %| \appoggiatura { e64 d cis } d8.~ \< \tuplet 3/2 { d32 a-. ( d,-. ) } a4-- \mf \>
    | e4~ 16. \tuplet 3/2 { e64 ( d cis } d8~ )
    | d8.~ \< \tuplet 3/2 { d32 a-. ( d,-. ) } a4-- \mf \>
    | g8 \p r16 r64 \clef "tenor" d' \f ( a' d e32 ) gis-- a-- fis-- gis16~ \tuplet 3/2 { gis32 fis-. ( e-. ) }
    |
    d64-\markup { \small \italic "ad lib." }
        ( \clef "bass" a d, d ) fis, ( g! d' a' )
        d,, \> ( d' d a' \clef "tenor" d e  gis a b8 \p ) \breathe
        \clef "bass" e,,,16-- \mp ( d-- ) \break
    | c8 \< r32 \clef "tenor" a''64 ( \mf \> d e a g f! e4 \mp \>
    | d8 \p ) r8 d64 [ ( c d c~ ) c16 ( \mp \< r16 b16-- ) ]
    | a8-- ( \clef "bass" g,-- \mf ) r g'-- \f
    | f->-- f,~ f16 \tuplet 3/2 { g32 \> ( a d ) } \tuplet 3/2 { a'16-- ( b-- d-- ) }
    | e16. \pp \< ( d64 a g32-. ) fis-. d-. a-.
        g16 \p fis''8^\markup { \small \italic "poco riten." } \pp \< ( e16 )
    | d8-- \p \breathe
    r8 \tuplet 3/2 { a8-- \downbow \mf \< b-- \upbow ( c!-- ) } 
    | d16-- \upbow \ff d,,8-> \sf \downbow r16 r c''!8 \sf f,,!16
    | r16 bes'8 \sf bes,,16 \tuplet 3/2 { ees8 \rfz \> ( d'8. ) \clef "tenor" d'16 }
    | \acciaccatura { gis8 } a4. \harmonic \p \clef "bass" d,,,8-. \sf
    | \clef "tenor" \acciaccatura { g''! } a4. \harmonic \p \clef "bass" d,,,8-. \sf
    | \clef "tenor" \acciaccatura { gis'' } a4. \harmonic \p \clef "bass" c,,,!8 ( \< \upbow \break
    | bes8.~ \f \tuplet 3/2 { bes32 f' c' ) } \acciaccatura <d! a'>8 d'!4~ \<
    | d8.~ 32 \tuplet 3/2 { a64 ( d, a' } d8~ ) \tuplet 3/2 { d16 a d, } 
    | \acciaccatura <bes, g' d' a'>8 d''2 \ff \breathe
    | f,,!4 ( \mf \> e''
    | d8. \p ) r16 d64 [ ( c! d c~ ) c16 \< ( r16 b!16-- ] )
    | a8-- \mp ( g,-- ) r8 a \pp \< (
    | d,8.~ d64 ) d' _( d a' d4~ \p
    | d8.~ ) 64 a64 ( d, a' d8~ ) \> \tuplet 3/2 { d16 a-. ( d,-. ) }
    | d,4. \pp \< ( bes8
    | c2~ \! \>
    | c8 \! ) r r4
}
