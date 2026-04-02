\version "2.24.0"
\paper {
  indent = 0
  line-width = 4\cm
  top-margin = 0.3\cm
  bottom-margin = 0.3\cm
  left-margin = 0.5\cm
  right-margin = 0.5\cm
  print-page-number = ##f
  ragged-right = ##t
}
\score {
  \new Staff {
    \clef treble
    \key g \major
    \omit Staff.TimeSignature
    \omit Staff.BarLine
    \relative c' { s1 }
  }
  \layout { }
}
\markup { \italic \small "G major — 1 sharp (F♯)" }
