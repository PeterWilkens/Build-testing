\version "2.24.0"
#(set-global-staff-size 20)
\paper {
  indent = 0
  paper-width = 12\cm
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
    \clef bass
    \key c \major
    \omit Staff.TimeSignature
    \relative c {
      <d c'>4^\markup { "Dm7" }
      <g b>4^\markup { "G7" }
      <c, b'>4^\markup { "CMaj7" }
      \bar "||"
    }
  }
  \layout { }
}
\markup {
  \italic \small "Bud Powell shells (R+7, R+3, R+7) on IIm7–V7–Imaj7 in C"
}
