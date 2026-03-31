\version "2.24.0"
\paper {
  indent = 0
  line-width = 4\cm
  top-margin = 0.3\cm
  bottom-margin = 0.3\cm
  left-margin = 0.4\cm
  right-margin = 0.4\cm
  print-page-number = ##f
  ragged-right = ##t
  markup-markup-spacing.padding = #1
}
\score { \new Staff { \clef treble \key c \major \omit Staff.TimeSignature \relative c' { <c ges'>4 \bar "||" } } \layout { } }
\markup { \italic \small \concat { \flat "5" } }
