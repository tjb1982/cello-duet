cello-b = \new Voice \relative c {
    \time 2/4
    \clef "bass"
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 2,2,2,2

        %\tuplet 3/2 { d'64^\markup { \small \italic "ad lib." } a d, } g,16 \f \tuplet 3/2 { d'32 a' d }
        %\tuplet 5/4 { e d a d, g, }
        %fis16 g64 d' a' d
        %\tuplet 3/2 { e32 d a } \tuplet 3/2 { d, \open d fis, } d' d \open
        %r2*12

    g8.~ \open \f ( \tuplet 3/2 { g32 d' a' } d4~
    | d4 ) \appoggiatura { a64 g d e a } d8~ \tuplet 3/2 { d16 a-- ( d,-- ) }
    | \acciaccatura { <g, d' a'>8 } d''8~ \fermata \> 8~ 4~ \p
    | d8 [ \appoggiatura { e64 d e } d8~ ] 4~
    | 4~ \< \appoggiatura {
        d64^\markup { \small \italic "ad lib., inflorescent" } a d, g,64 \f d' a' d e
        \tuplet 10/8 { e d a d, g, fis g d' a' d }
        e d a d, \open d fis, d' d \open
    } g,8.~ \tuplet 3/2 { g32 d' ( a' ) }
    | fis'4. \> \appoggiatura { fis64 e fis } e8~ \p
    | e8 \acciaccatura { fis } e4.
    | \appoggiatura { e64 d cis } d8.~ \< \tuplet 3/2 { d32 a-. ( d,-. ) } a4-- \mf \>
    | \time 3/4 g8 \p r16 \clef "tenor" \tuplet 3/2 { d'32 \f ( a' d } e ) gis-- a-- fis-- gis16~ \tuplet 3/2 { gis32 fis-. ( e-. ) }
    %|
    \appoggiatura {
        d64-\markup { \small \italic "ad lib." }
            \clef "bass" a d, d fis, g! d' a'
            d,, d' d a' \clef "tenor" d e  gis a
    }
    b8 \breathe \clef "bass" e,,,16-- \mp ( d-- ) \break
    | \time 2/4 c4~ \< \appoggiatura { 64 d' a' \mf \> \clef "tenor" d e a g f! } e4 \mp \> (
    | d8 \p ) r8 \appoggiatura { d64 c d } c8-- \mp \< [ ( r16 b16-- ) ]
    | a8-- ( \clef "bass" g,-- \mf ) r g'-- \f
    | f->-- f,-- \breathe r16 \tuplet 3/2 { g32 \pp \< ( a d } \tuplet 3/2 { a'16-- b-- d-- ) }
    | e16. ( d64 a g32 d a g
        d8 \p \> ) \tuplet 6/4 { a'32 ( d e a cis e }
    \override NoteHead.style = #'harmonic
    | \appoggiatura { a,8~ } <a e'>8_\markup { \small I,II } ) \pp \fermata
    \revert NoteHead.style
    r8 \tuplet 3/2 { a8-- \downbow \mf \< b-- \upbow ( c!-- ) } 
    | d16-- \upbow \ff d,,8-> \sf \downbow r16 r c''!8 \sf f,,!16
    | r16 bes'8 \sf bes,,16 \tuplet 3/2 { ees8 \rfz \> ( d'8. ) \clef "tenor" d'16 }
    | \acciaccatura { gis8 } a4. \harmonic \p \clef "bass" d,,,8-. \sf
    | \clef "tenor" \acciaccatura { gis'' } a4. \harmonic \p \clef "bass" d,,,8-. \sf
    | \clef "tenor" \acciaccatura { gis'' } a4. \harmonic \p \clef "bass" c,,,!8 ( \< \upbow \break
    | bes8.~ \f \tuplet 3/2 { bes32 f' c' ) } \acciaccatura { <d a'> } d'4~ \<
    | d4 \appoggiatura { a32 d, a' } d8~ \tuplet 3/2 { d16 a d, } 
    | \acciaccatura <bes, g' d' a'>8 d''2 \ff \breathe
    | f,,!4 ( \mf \> e''
    | d8. \p ) r16 \appoggiatura {d64 c! d } c8-- \< ( [ r16 b!16-- ] )
    | a8-- \mp ( g,-- ) r8 a \pp \< (
    | d,8.~ d64 ) d' _( d a' d4~ \p
    | d4 ) \appoggiatura { a32 d, a' } d8~ \> \tuplet 3/2 { d16 a-. ( d,-. ) }
    | d,4. \pp \< ( bes8
    | c2~ \! \>
    | c8 \! ) r r4
}
