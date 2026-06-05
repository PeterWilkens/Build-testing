\version "2.24.0"
#(set-global-staff-size 32)
\paper {
  indent = 0
  paper-width = 16\cm
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
    \cadenzaOn
    <c' e' g' b'>1^\markup { "'A' voicing (3–5–7–9)" }
    \bar "|"
    <g b c' e'>1^\markup { "'B' voicing (7–9–3–5)" }
    \bar "||"
  }
  \layout { }
}
\markup {
  \italic \small "Am9 rootless voicings"
}
