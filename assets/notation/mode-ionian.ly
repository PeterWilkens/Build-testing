\version "2.24.0"
#(set-global-staff-size 14)
\paper {
  indent = 0
  print-page-number = ##f
  ragged-right = ##t
  tagline = ##f
}
\score {
  \new Staff {
    \clef treble
    \omit Staff.TimeSignature
    { c'4 d' e' f' g' a' b' c'' \bar "||" }
  }
}
