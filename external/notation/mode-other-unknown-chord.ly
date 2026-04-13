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
      gis'^\markup { \small \concat { \sharp "5" } }
      bes'^\markup { \small \concat { \flat "7" } }
      des''^\markup { \small \concat { \flat "9" } }
      fis''^\markup { \small \concat { \sharp "11" } }
      aes''^\markup { \small \concat { \flat "13" } }
      \bar "||"
    }
  }
}
