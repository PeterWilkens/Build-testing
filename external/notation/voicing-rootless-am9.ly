\version "2.24.0"
#(set-global-staff-size 20)
\paper {
  indent = 0
  paper-width = 10\cm
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
    <c' e' g' b'>2^\markup { "'A' voicing (3–5–7–9)" }
    <g b c' e'>2^\markup { "'B' voicing (7–9–3–5)" }
    \bar "||"
  }
  \layout { }
}
\markup {
  \italic \small "Am9 rootless voicings"
}
