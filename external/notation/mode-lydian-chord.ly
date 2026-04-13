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
    {
      c'4^\markup { \small "1" }
      e'^\markup { \small "3" }
      g'^\markup { \small "5" }
      b'^\markup { \small "7" }
      d''^\markup { \small "9" }
      fis''^\markup { \small \concat { \sharp "11" } }
      a''^\markup { \small "13" }
      \bar "||"
    }
  }
}
