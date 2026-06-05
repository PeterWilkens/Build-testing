\version "2.24.0"
#(set-global-staff-size 32)
\paper {
  indent = 0
  paper-width = 30\cm
  top-margin = 0.8\cm
  bottom-margin = 0.5\cm
  left-margin = 0.8\cm
  right-margin = 0.5\cm
  print-page-number = ##f
  ragged-right = ##t
  markup-markup-spacing.padding = #1
}
\score {
  \new PianoStaff <<
    \new Staff {
      \clef treble
      \key c \major
      \time 4/4
      r2 <f' c''>2^\markup { \bold \small "Dm7" } |
      r2 <f' b'>2^\markup { \bold \small "G7" } |
      r2 <e' b'>2^\markup { \bold \small "CMaj7" } ||
    }
    \new Staff {
      \clef bass
      \key c \major
      \time 4/4
      d,2 r2 |
      g,2 r2 |
      c,2 r2 ||
    }
  >>
  \layout { }
}
\markup {
  \italic \small "Root + guide tones: root (beat 1, bass) then guide tones (beat 3, treble) — oom–pah pattern"
}
