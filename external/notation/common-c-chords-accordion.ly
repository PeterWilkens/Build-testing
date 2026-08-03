\version "2.24.0"

% Common C chords on the Stradella bass, written in accordion convention:
% the bass note sits BELOW the middle staff line (stem down) and the chord
% tones sit ABOVE the middle staff line (stem up), on a single bass-clef staff.

#(set-global-staff-size 24)

\paper {
  paper-width = 24\cm
  paper-height = 9\cm
  indent = 0
  line-width = 23.6\cm
  top-margin = 0.3\cm
  bottom-margin = 0.3\cm
  left-margin = 0.2\cm
  right-margin = 0.2\cm
  print-page-number = ##f
  ragged-right = ##f
  tagline = ##f
}

\layout {
  \context {
    \Score
    \override SpacingSpanner.uniform-stretching = ##t
  }
}

upper = {
  \voiceOne
  <e g bes>2^\markup \bold "C7"
  <ees g bes>2^\markup \bold "Cm7"
  <e g b>2^\markup \bold "Cmaj7"
  <e g bes d'>2^\markup \bold "C9"
  <e g a>2^\markup \bold "C6"
  <ees g bes d'>2^\markup \bold "Cm9"
  <e g b d'>2^\markup \bold "Cmaj9"
  \break
  <ees g a>2^\markup \bold "Cm6"
  <ees ges bes>2^\markup \concat { \bold "Cm7" \bold \flat \bold "5" }
  <e g a d'>2^\markup \bold "C6/9"
  <ees ges a>2^\markup \bold "Cdim7"
  <ees g bes d' f'>2^\markup \bold "Cm11"
  <g bes d' f'>2^\markup \bold "C11"
  <e g bes a'>2^\markup \bold "C13"
  \bar "||"
}

lower = {
  \voiceTwo
  \repeat unfold 14 { c2 }
}

\score {
  \new Staff \with {
    \omit Staff.TimeSignature
  } {
    \clef bass
    \cadenzaOn
    <<
      \upper
      \\
      \lower
    >>
  }
}
