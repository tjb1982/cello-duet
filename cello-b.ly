cello-b = \new Voice \relative c {
    \time 2/4
    \clef "bass"
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 2,2,2,2

    g8.~ \open \f ( \tuplet 3/2 { g32 d' a' } d4~
    | d4 ) \appoggiatura { a8 g d e a } d8~ \tuplet 3/2 { d16 a-- ( d,-- ) }
    | \acciaccatura { <g, d' a'>8 } d''8~ \fermata \> 8~ 4~ \p
    | d8 [ \appoggiatura { e8 d e } d8~ ] 4~
    | 4 \< \appoggiatura {
        a8^\markup { \small \italic "ad lib." } d, g, \f d' a' d e d a d, g, fis g d' a' d e d a d, \open d fis, d' d \open
    } g,8.~ \tuplet 3/2 { g32 d' ( a' ) }
    | fis'4. \> \appoggiatura { fis8 e fis } e8~ \p
    | e8 \acciaccatura { fis } e4.
    | \appoggiatura { e8 d cis } d8.~ \< \tuplet 3/2 { d32 a-. ( d,-. ) } a4-- \mf \>
    | \time 3/4 g8 \p r16 \clef "tenor" \tuplet 3/2 { d'32 \f ( a' d } e ) gis-- a-- fis-- gis16~ \tuplet 3/2 { gis32 fis-. ( e-. ) }
    %|
    \appoggiatura {
        d8-\markup { \small \italic "ad lib." }
            \clef "bass" a d, d fis, g! d' a'
            d,, d' d a' \clef "tenor" d e  gis a
    }
    b \breathe \clef "bass" e,,,16-- \mp ( d-- )
    | \time 2/4 c8.~ \< 64 d' ( d a' ) \mf \> \clef "tenor" \appoggiatura { d8 e a g f! } e4 \mp \> (
    | d8 \p ) r8 \clef "bass" \appoggiatura { d8 c d } c8-- \mp \< [ ( r16 b16-- ) ]
    | a8-- ( g,-- \mf ) r g'-- \f
    | f->-- f,-- \breathe r16 \tuplet 3/2 { g32 \pp \< ( a d } \tuplet 3/2 { a'16-- b-- d-- ) }
    | e16. ( d64 a g32 d a g
        d8 \p \> ) \tuplet 6/4 { a'32 ( d e a cis e }
    \override NoteHead.style = #'harmonic
    | \clef "treble" \appoggiatura { a8~ } <a e'>8_\markup { \small I,II } ) \pp \fermata
    \revert NoteHead.style
    r8 \clef "bass" \tuplet 3/2 { a,8-- \downbow \mf \< b-- \upbow ( c!-- ) } 
    | d16-- \upbow \ff d,,8-> \sf \downbow r16 r c''!8 \sf f,,!16
    | r16 bes'8 \sf bes,,16 \tuplet 3/2 { ees8 \rfz \> ( d'8. ) \clef "tenor" d'16 }
    | \acciaccatura { gis } a4. \p \clef "bass" d,,,8-. \sf
    | \clef "tenor" \acciaccatura { gis'' } a4. \p \clef "bass" d,,,8-. \sf
    | \clef "tenor" \acciaccatura { gis'' } a4. \p \clef "bass" c,,,8 ( \ff \upbow
    | bes8.~ \tuplet 3/2 { bes32 f' c' ) } \acciaccatura { <d a'> } d'4
    
}
