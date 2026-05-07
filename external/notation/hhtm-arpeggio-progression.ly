\version "2.24.4"

#(set-global-staff-size 20)

\paper {
  indent = 0
  paper-width = 22\cm
  paper-height = 5\cm
  line-width = 21\cm
  top-margin = 0.5\cm
  bottom-margin = 0.5\cm
  left-margin = 0.5\cm
  right-margin = 0.5\cm
  print-page-number = ##f
  ragged-right = ##t
  tagline = ##f
}

\score {
  \new Staff {
    \clef treble
    \key g \major
    \time 4/4
    %% Bar 1: Gmaj7 root arpeggio + Bm7 (arpeggio from the 3rd)
    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.padding = #0.5
    \mark \markup { \small \bold "Gmaj7" }
    g'8[ b'8 d''8 fis''8] b'8[ d''8 fis''8 a''8] |
    %% Bar 2: repeat
    g'8[ b'8 d''8 fis''8] b'8[ d''8 fis''8 a''8] |
    %% Bar 3: Gm7 root arpeggio + B D F# A
    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.padding = #0.5
    \mark \markup { \small \bold "Gm7" }
    g'8[ bes'8 d''8 f''8] bes'8[ d''8 f''8 a''8] |
    %% Bar 4: C7 root arpeggio + Em7b5 (arpeggio from the 3rd)
    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.padding = #0.5
    \mark \markup { \small \bold "C7" }
    c''8[ e''8 g''8 bes''8] e''8[ g''8 bes''8 d'''8]
    \bar "|."
  }
  \layout { }
}
