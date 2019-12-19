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
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \tempo "Adagio" 8 = 72
    \clef #"treble"
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 2,2,2,2
    \set melismaBusyProperties = #'()
    \time 4/4
    R2*2
    % m. 3
    r8 r16 d^\markup { \small \italic "sweetly, flautando" } \p d'8.-- ( cis16-- )
    | a16.-- ( g32-- ) g16.-- ( a32-- ) cis-- d-- a-- cis-- g8--
    | \time 3/4 g4~ g8 r8 r4
    \unset melismaBusyProperties
    | r8 r16 r32 d' \mf cis4 \>
        g!16. \p a32 cis32 ( \tuplet 3/2 { d64 cis b } cis32. ) d64
    | a4~ a8 r8 r4
    \set melismaBusyProperties = #'()
    | R2.
    | r4 r r8 e--^\markup {\small \italic ord.} \p \<
    | f!8-- [ \( r16 g16-- \) ] a8-- \mp \< \( b-- \)
    | cis ( d ) \mf r e-- \f
    | f!---> g-- r e,~ \( \pp \<
    | e8. fis16
        \unset melismaBusyProperties
        fis16~ 8
        \set melismaBusyProperties = #'()
        \mark "poco riten." g32-. a-.
    | bes8-- \) \p \breathe r8 \mark "string."
        \tuplet 3/2 { c-- \downbow \mf \< d-- \upbow \( e-- \) }
    | \tempo 8 = 88-92
        r16 \ff fis8-- ( \sf \downbow ( fis,16-- ) g8.-- ( fis'16-- )
    | e4~ \mark \poco-allarg 8 r8
    | \mark \tempo-one r8 a,-- \p gis16->-. ( e-. ) r8
    | r8. a16-- gis-.-> ( e-. ) r a--
    | \acciaccatura a8 \tuplet 3/2 { gis16-.^"(chickens)" \acciaccatura gis8 e16-. ( a-. ) } \acciaccatura a8 gis16-- \( e-- \)
        fis4 \< \upbow
    %| r16 \! d'-- \f \tuplet 3/2 { cis-- [ ( a-- e'-- ) ] } dis8-- r16 r32 b!
    %| r16 \! d'-- \f \tuplet 3/2 { cis-- [ ( a-- e'-- ) ] } dis8-- r16 r32
        %\appoggiatura { \tuplet 5/4 {\clef "bass" c,,,!32 g'! a' \clef "treble" e' a } } b!32--
    | r16 \! d'-- \f \tuplet 3/2 { cis-- [ ( a-- e'-- ) ] } dis16-- r64
        \clef "bass" c,,,!64 ( g'! a' \tuplet 3/2 { \clef "treble" e'16 ) a-- b!-- }
    | fis'4.-\markup { \italic "cresc. molto" } r16 g!16--
    | \time 3/4
        \grace s8 a8 \ff ( a,8~ a4~ \> a8 \! ) r8
    | \time 2/4 r4 r8 e-- \p \<
    | f!8-- \( [ r16 g-- \) ] a8-- \( b-- \)
    \set melismaBusyProperties = #'()
    | cis8-- ( \mp d-- ) r8
    \unset melismaBusyProperties
        e~ \pp \(
    | e f!~ 4 \)
    | r8 r16 a, \p \tuplet 3/2 { g f e~ } e r16
    | <<
        {
            \voiceOne
            {
                r8 \clef "tenor" a-- \pp \< \acciaccatura a8 \( \tuplet 3/2 { g8. f16 e8 }
                | e8^"II" \! d4.~
                | d8 \)
            }
        }
        \new Voice {
            \voiceTwo
            r4 d,4 ( \open
            | g,2 \open ~ \>
            | g8 ) \!
        }
    >> a8 \rest a4 \rest \bar "|." 
}
\addlyrics {
    a way to use the dic -- tion -- a -- ry or your int' rest _
    the world's long -- est float -- ing bridge __
    plac -- ing your hand be -- fore _ the chick -- ens
    young _ and var -- i -- a -- ble read -- ings with new -- er mes -- sag -- es __ _
    dis -- per -- sion dis -- per -- sion
    or pre -- vi-ous ex -- per -- i -- ence
    re -- car -- pet -- ing paths _ _ _ _ _ to doors to doors __ _ _ _
    the on -- ly per -- son I know I know __
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
