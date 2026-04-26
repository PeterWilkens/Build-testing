\version "2.24.0"

#(set-global-staff-size 40)

chordNames = \chordmode {
  c4:6 b4:dim7/f c4:6/e b4:dim7/f c4:6/g c4:6/a b4:dim7 c4:6
}

\paper {
  paper-width = 24\cm
  paper-height = 17.0\cm
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
    \new ChordNames {
      \chordNames
    }
    \new Staff {
      \clef treble
      \key c \major
      \omit Staff.TimeSignature
      \cadenzaOn
      c'4^\markup { \tiny "1" }
      d'^\markup { \tiny "2" }
      e'^\markup { \tiny "3" }
      f'^\markup { \tiny "4" }
      g'^\markup { \tiny "5" }
      a'^\markup { \tiny "6" }
      b'^\markup { \tiny "7" }
      c''^\markup { \tiny "8" }
      \bar "||"
    }
  >>
  \layout {}
}
