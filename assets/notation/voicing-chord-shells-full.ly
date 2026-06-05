\version "2.24.0"
#(set-global-staff-size 58)
\paper {
  indent = 0
  paper-width = 96\cm
  top-margin = 1.2\cm
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
    <d c'>1^\markup { \center-column { \bold \small "Dm7" \tiny "R+7" } }
    \bar "|"
    <g b>1^\markup { \center-column { \bold \small "G7" \tiny "R+3" } }
    \bar "|"
    <c b>1^\markup { \center-column { \bold \small "CMaj7" \tiny "R+7" } }
    \bar "|"
    <f a>1^\markup { \center-column { \bold \small "Fmaj7" \tiny "R+3" } }
    \bar "|"
    <b, a>1^\markup { \center-column { \bold \small "Bm7b5" \tiny "R+7" } }
    \bar "|"
    <e gis>1^\markup { \center-column { \bold \small "E7" \tiny "R+3" } }
    \bar "|"
    <a, g>1^\markup { \center-column { \bold \small "Am7" \tiny "R+7" } }
    \bar "||"
  }
  \layout { }
}
\markup {
  \italic \small "Bud Powell shells – alternating R+7 / R+3 through the cycle of 5ths in C major / A minor"
}
