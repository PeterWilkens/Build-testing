\version "2.24.0"
#(set-global-staff-size 20)
\paper {
  indent = 0
  paper-width = 8\cm
  top-margin = 0.5\cm
  bottom-margin = 0.5\cm
  left-margin = 0.8\cm
  right-margin = 0.5\cm
  print-page-number = ##f
  ragged-right = ##t
  markup-markup-spacing.padding = #1
}
\score {
  \new Staff {
    \clef treble
    \key a \minor
    \omit Staff.TimeSignature
    \relative c' {
      <c g'>2^\markup { "Guide tones" }
      <g c'>2^\markup { "Inverted" }
      \bar "||"
    }
  }
  \layout { }
}
\markup {
  \italic \small "Am7 guide tones: 3rd (C) + 7th (G), and inverted"
}
