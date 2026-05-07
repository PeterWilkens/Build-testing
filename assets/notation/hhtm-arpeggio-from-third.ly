\version "2.24.4"

#(set-global-staff-size 20)

\paper {
  indent = 0
  paper-width = 22\cm
  paper-height = 6\cm
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
    %% Bar 1: arpeggio from the 3rd of Gmaj7
    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.padding = #0.5
    \mark \markup { \small \bold "Gmaj7" }
    b'8 d''8 fis''8 a''8~ a''4 r4 |
    %% Bar 2: repeat
    b'8 d''8 fis''8 a''8~ a''4 r4 |
    %% Bar 3: arpeggio from the 3rd of Gm7
    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.padding = #0.5
    \mark \markup { \small \bold "Gm7" }
    bes'8 d''8 f''8 a''8~ a''4 r4 |
    %% Bar 4: arpeggio from the 3rd of C7
    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.padding = #0.5
    \mark \markup { \small \bold "C7" }
    e''8 g''8 bes''8 d'''8~ d'''4 r4
    \bar "|."
  }
  \layout { }
}
