xstm = \once \hide Stem
singing-rhythm-explanation = \markup \small {
    \override #'(baseline-skip . 1)
    \wordwrap {
        Recitative, taking the rhythm and articulation
        from the prosody of the spoken text. The vc.II part should approximately line up,
        but it's more important that the vc.I player be free to take as much time as they want.
    }
}

cello-a = 
<<
\new Voice \relative c' {
    \tempo 8 = 72
    \clef #"treble"
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 2,2,2,2
    \set melismaBusyProperties = #'()
    R2*2
    % m. 3
    r8 \fermata r16 d^\markup { \small \italic "sweetly" } \p d'8. cis16 \break
    %| a16. g32 g16. a32 cis-- d-- a-- cis-- g8--
    | \once \omit TupletNumber \tuplet 9/8 {
        \once \override Score.FootnoteItem.annotation-line = ##f
        \footnote "*" #'(0 . 3) \markup { \concat { "* " \singing-rhythm-explanation } }
            % n.b., the `_[ ... ]` is here so the phantom beams don't interfere with the footnote
            \xstm a_[ \xstm g \xstm g \xstm a \xstm cis \xstm d \xstm a \xstm cis \xstm g ]
    }
    | g4 r4
    | r8 r16 r32 d' \mf cis4 \>
    | \once \override TupletBracket.bracket-visibility = ##f
      \once \omit TupletNumber \tuplet 5/4 {
        \xstm g!8 \p \xstm a \appoggiatura { cis32 \tuplet 3/2 { d64 cis b } } \xstm cis8 \xstm d \xstm a~
    }
    | a8 r8 r4
    | R2 | R2 | r4 r8 e-- \p \<
    | f!8-- [ \( r16 g16-- \) ] a8-- \mp \< \( b-- \)
    | cis ( d ) \mf r e-- \f
    | f!---> g-- \breathe r e,~ ( \pp \<
    %| e8. fis16 fis8 g16 a
    %| bes8
    | e8. fis16 ) \unset melismaBusyProperties fis16. \p \> ( g32 a32 \mark \markup { \small \italic "poco riten." } bes ) c d
    | \appoggiatura { d8~ } <d f,>8 \pp \fermata r8 \mark \markup { \small \italic "a tempo" }
        \tuplet 3/2 { c-- \downbow \mf \< d-- \upbow \( e-- \) }
    | r16 \ff fis8 \sf \downbow \( fis,16 \) g8. fis'16
    | e4. r8
    | r8 a,-- \p gis16->-. e-. r8
    | r8. a16-- gis-.-> e-. r a--
    | \tuplet 3/2 { gis16-- \( \acciaccatura gis8 e16-- a-- \) } gis-- \( e-- \) fis4 \<
    | r16 d' \f \< \tuplet 3/2 { cis[ a e'] } dis8 r16 r32 b!
    | fis'4. r16 g!16
    | a8 \ff ( a,4. ) \breathe
    | r4 r8 e \p \< \(
    | f!8 [ r16 g ] a8 b
    \set melismaBusyProperties = #'()
    | cis8-- ( \mp d-- ) r8
    \unset melismaBusyProperties
        e~ \pp
    | e f!~ 4 \)
    | r8 r16 a, \p \tuplet 3/2 { g f e~ } e r16
    | r8 a \pp \< \tuplet 3/2 { g f e }
    | e8 \! d4.~ \>
    | d8 \! r r4 \bar "|."
}
\addlyrics {
    a way to use the dic -- tion -- a -- ry or your int' rest
    the world's long -- est float -- ing bridge _
    plac -- ing your hand be -- fore _ the chick -- ens
    young _ and var -- i -- a -- ble read -- ings with new -- er mes -- sag -- es
    dis -- per -- sion dis -- per -- sion
    or pre -- vi-ous ex -- per -- i -- ence
    re -- car -- pet -- ing paths to doors to doors
    the on -- ly per -- son I know I know
    and si -- mi -- lar and si -- mil -- ar mo -- dels
}
>>



    %<<
    %\new Voice {
    %    \stemDown a b c d
    %}
    %\new CueVoice {
    %    \stemUp \shiftOn c^"vc. 2" d e f
    %}
    %>>
    %<<
    %\new Voice \relative c {
    %    f g a bes
    %}
    %>>
