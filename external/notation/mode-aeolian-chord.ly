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
      ees'^\markup { \small \concat { \flat "3" } }
      g'^\markup { \small "5" }
      bes'^\markup { \small \concat { \flat "7" } }
      d''^\markup { \small "9" }
      f''^\markup { \small "11" }
      aes''^\markup { \small \concat { \flat "13" } }
      \bar "||"
    }
  }
}
