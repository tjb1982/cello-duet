\include "common.ly"

performance-notes = \bookpart {
    \paper {}
    \header {
        subtitle = "Performance notes"
        instrument = ""
        composer = ""
    }
    \markup {
        \column {
            \line { "\n" }
            \line { "\n" }
            \line {
                \wordwrap {
                    \italic Scordatura is required by the \italic { Violoncello II } part (A, D, G, B\flat), so
                    this book contains two scores: one for the "\"sounding\"" notes, and a "\"transposing\"" score
                    intended as a convenience for the
                    \italic { Violoncello II } player, indicating what fingerings should be used when the C
                    string (which is tuned to B\flat) is \italic required. The principle is identical to a transposing
                    instrument such as a clarinet or trumpet keyed in B\flat, but here only applies to notes that
                    \italic must be played on the C string.
                    This is indicated by diamond noteheads (not to be confused with harmonic noteheads). E.g.:
                }
            }
        }
    }
    \score {
        \layout {
            %\context {
            %    \Score
            %    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/64)
            %}
        }
        \new Voice \relative c' {
            \override Staff.TimeSignature.stencil = ##f
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \time 2/4
            \clef "bass"
            \set subdivideBeams = ##t
            \set baseMoment = #(ly:make-moment 1/8)
            \set beatStructure = 2,2,2,2
                d16-- \upbow \ff \trp e,,8-> \sf \downbow
                r16 r c''!8 \sf \trp g,16
            | r16 bes'8 \sf
                \trp c,,16
                \mark \poco-allarg \tuplet 3/2 { \trp f!8 \rfz \> (
                d'8. ) \clef "tenor" d'16 }
            | \acciaccatura { gis8^> } a4. \harmonic \p
        }
    }
    \markup {
        \column {
            \line {
                \wordwrap {
                    The notes with these noteheads are transposed up a whole step (meaning they sound a whole step lower when played
                    as written on the lowest string).
                    \italic { N.B., this is not intended to preclude the
                    possibility of fingering other notes on the lowest string, but those would need to be transposed ad hoc. }
                    I recommend that the \italic { Violoncello I }
                    player read from the "\"sounding\"" score, and the \italic { Violoncello II } player
                    can read from either, so that each player has at least a complete concert-pitch reference
                    of the opposite part.
                }
            }
            \line { "\n" }
            \line { "\n" }
            \wordwrap {
                \bold \smallCaps {I. Aria, "\"the mass of the mechanics.\" " }
                The text that appears underneath the \italic { Violoncello I } part is included
                because it should be taken into account as source material for phrasing and
                articulation. The goal is for the part to fall
                comfortably into the sort of "\"prosody\"" that befits natural language, or
                an older style of performace practice, rather
                than a more strict, lattice-like interpretation, which is perhaps more
                common in today's practice. The
                pitches could be colored, too, but not as in, e.g., \italic Sprechstimme;
                the focus should be on making everything \concat { extra- \italic cantabile . }
            }
            \line { "\n" }
            \line { "\n" }
            \line {
                \wordwrap {
                    \bold \smallCaps { III. "Saraband. " }
                    Not really a normal "\"saraband.\"" Here, the triple meter has been mutated into a
                    "\"triple\"" composed of 4 + 3 + 2.
                }
            }
            \line { "\n" }
            \line { "\n" }
            \line {
                \wordwrap {
                    The \box { A } and \box { C } sections of this movement are presented as separate
                    systems for each part
                    because they should be played together asynchronously, meaning that each part's
                    rhythm, tempo, phrasing, etc., should proceed independently. However,
                    the intention is that during rehearsal the parts \italic would begin to coalesce
                    in a more or less deterministic way,
                    according to your own interpretation of your individual part and how the parts sound
                    together. In the end, it should sound like you're listening to each other, that
                    the piece was composed in a conventional way; i.e., it shouldn't sound like a novelty.
                }
            }
            \line { "\n" }
            \line { "\n" }
            \line {
                \wordwrap {
                    How it works: there are two roles, and a player can only have one at a time. The part
                    marked with \concat { "\"" notifies " " \italic X \sub n "\"" } is a
                    \concat { \bold preemptor , }
                    in charge of leading the resynchronization effort at the end of their part of the section.
                    The other part, the \bold preemptee (marked with \concat { "\"" awaits " " \italic X \sub n "\"" ) , }
                    is given a \super \small \musicglyph "scripts.segno" which denotes that what follows
                    (including what's under the sign itself) is
                    "\"preemptable,\"" meaning that once this symbol is reached, the preemptor has the
                    ability to interrupt and conduct the preemptee into the
                    next section, without delay (without finishing the rest of their line).
                    By necessity, a preemptor's part is longer than a preemptee's part, and for this reason
                    the preemptee's part ends with a vamp repeat.
                }
            }
        }
    }
}

