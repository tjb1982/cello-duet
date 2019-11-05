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
    \tempo "Adagio" 8 = 72
    \clef #"treble"
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 2,2,2,2
    \set melismaBusyProperties = #'()
    \time 4/4
    R2*2
    % m. 3
    r8 \fermata r16 d^\markup { \small \italic "sweetly" } \p d'8.-- ( cis16-- )
    | a16.-- ( g32-- ) g16.-- ( a32-- ) cis-- d-- a-- cis-- g8--
    | \time 3/4 g4~ g8 r8 r4
    \unset melismaBusyProperties
    | \time 4/4 r8 r16 r32 d' \mf cis4 \>
    | g!16. \p a32 cis32 ( \tuplet 3/2 { d64 cis b } cis32. ) d64 a4~
    | a8 r8 r4
    \set melismaBusyProperties = #'()
    | R2 | R2 | r4 r8 e-- \p \<
    | f!8-- [ \( r16 g16-- \) ] a8-- \mp \< \( b-- \)
    | cis ( d ) \mf r e-- \f
    | f!---> g-- r e,~ \( \pp \<
    | e8. fis16
        \unset melismaBusyProperties
        fis16~ 8
        \set melismaBusyProperties = #'()
        \mark "poco riten." g32 a
    | bes8-- \) \p \breathe r8 \mark "a tempo"
        \tuplet 3/2 { c-- \downbow \mf \< d-- \upbow \( e-- \) }
    | r16 \ff fis8 \sf \downbow \( fis,16 \) g8. fis'16
    | e4. r8
    | r8 a,-- \p gis16->-. ( e-. ) r8
    | r8. a16-- gis-.-> ( e-. ) r a--
    | \tuplet 3/2 { \acciaccatura a8 gis16-. \acciaccatura gis8 e16-. ( a-. ) } gis-- \( e-- \)
        fis4 \< \upbow
    | r16 d' \f \< \upbow \tuplet 3/2 { cis[ a-- ( e'-- ) ] } dis8 r16 r32 b!
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
    | <<
        {
            \voiceOne
            {
                r8 \clef "tenor" a \pp \< \tuplet 3/2 { \acciaccatura a8 g f e }
                | e8 \! d4.~ \>
                | d8 \!
            }
        }
        \new Voice {
            \voiceTwo
            r4 d,4
            | a'2~
            | a8
        }
    >> a8 \rest a4 \rest \bar "|." 
}
\addlyrics {
    a way to use the dic -- tion -- a -- ry or your int' rest _
    the world's long -- est float -- ing bridge
    plac -- ing your hand be -- fore _ the chick -- ens
    young _ and var -- i -- a -- ble read -- ings with new -- er mes -- sag -- es
    dis -- per -- sion dis -- per -- sion
    or pre -- vi-ous ex -- per -- i -- ence
    re -- car -- pet -- ing paths to doors to doors _
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
