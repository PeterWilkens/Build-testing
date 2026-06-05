\version "2.24.0"
#(set-global-staff-size 32)
\paper {
  indent = 0
  paper-width = 22\cm
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
    \cadenzaOn
    <f a c' e'>1^\markup { "Dm9 (A)" }
    \bar "|"
    <f a b d'>1^\markup { "G13 (B)" }
    \bar "|"
    <e g b d'>1^\markup { "CMaj9 (A)" }
    \bar "||"
  }
  \layout { }
}
\markup {
  \italic \small "Rootless voicings on IIm9–V13–Imaj9 in C (alternating A and B voicings)"
}
