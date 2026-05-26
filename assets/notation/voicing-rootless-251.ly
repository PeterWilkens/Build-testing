\version "2.24.0"
#(set-global-staff-size 20)
\paper {
  indent = 0
  paper-width = 14\cm
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
    <f a c' e'>4^\markup { "Dm9 (A)" }
    <f a b d'>4^\markup { "G13 (B)" }
    <e g b d'>4^\markup { "CMaj9 (A)" }
    \bar "||"
  }
  \layout { }
}
\markup {
  \italic \small "Rootless voicings on IIm9–V13–Imaj9 in C (alternating A and B voicings)"
}
