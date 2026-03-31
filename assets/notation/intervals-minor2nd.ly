\version "2.24.0"
\paper {
  indent = 0
  line-width = 12\cm
  top-margin = 0.3\cm
  bottom-margin = 0.3\cm
  left-margin = 0.4\cm
  right-margin = 0.4\cm
  print-page-number = ##f
  ragged-right = ##t
}
\score {
  \new Staff {
    \clef treble
    \key c \major
    \time 2/4
    \relative c' {
      ees4^\markup { \small "m2" } e4 |
      aes4^\markup { \small "m2" } a4 |
      cis4^\markup { \small "m2" } d4 |
      fis4^\markup { \small "m2" } g4 |
      b4^\markup { \small "m2" } c4 |
      \bar "||"
    }
  }
  \layout { }
}
