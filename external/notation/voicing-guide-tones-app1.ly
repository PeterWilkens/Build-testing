\version "2.24.0"
#(set-global-staff-size 32)
\paper {
  indent = 0
  paper-width = 50\cm
  top-margin = 0.8\cm
  bottom-margin = 0.5\cm
  left-margin = 0.5\cm
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
    <f c'>1^\markup { \center-column { \bold \small "Dm7" \tiny "R-pos" } }
    <f b>1^\markup { \center-column { \bold \small "G7" \tiny "inv." } }
    <e b>1^\markup { \center-column { \bold \small "CMaj7" \tiny "R-pos" } }
    <e a>1^\markup { \center-column { \bold \small "Fmaj7" \tiny "inv." } }
    \bar "|"
    <d a>1^\markup { \center-column { \bold \small "Bm7b5" \tiny "R-pos" } }
    <d gis>1^\markup { \center-column { \bold \small "E7" \tiny "inv." } }
    <c g>1^\markup { \center-column { \bold \small "Am7" \tiny "R-pos" } }
    \bar "||"
  }
  \layout { }
}
\markup {
  \italic \small "Guide tone shells (no root) – alternating root-position and inverted through the cycle of 5ths"
}
