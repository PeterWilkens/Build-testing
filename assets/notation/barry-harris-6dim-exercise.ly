\version "2.24.0"

#(set-global-staff-size 40)

\paper {
  paper-width = 24\cm
  paper-height = 16.0\cm
  indent = 0
  line-width = 23.6\cm
  top-margin = 0.3\cm
  bottom-margin = 0.3\cm
  left-margin = 0.2\cm
  right-margin = 0.2\cm
  print-page-number = ##f
  ragged-right = ##t
  tagline = ##f
}

\layout {
  \context {
    \Score
    \override SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  <<
    \new Staff {
      \clef treble
      \key c \major
      \omit Staff.TimeSignature
      \cadenzaOn
      <c' e' g' a'>4
      <d' f' aes' b'>
      <e' g' a' c''>
      <f' aes' b' d''>
      <g' a' c'' e''>
      <a' c'' e'' g''>
      <b' d'' f'' aes''>
      <c'' e'' g'' a''>
      \bar "||"
    }
  >>
  \layout {}
}
