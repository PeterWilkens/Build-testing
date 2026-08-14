\version "2.24.0"

#(set-global-staff-size 24)

\paper {
  paper-width = 22\cm
  paper-height = 19\cm
  indent = 2.4\cm
  top-margin = 1.5\cm
  bottom-margin = 0.5\cm
  left-margin = 0.25\cm
  right-margin = 0.25\cm
  print-page-number = ##f
  ragged-right = ##f
}

\score {
  \new PianoStaff <<
    \new Staff {
      \clef treble
      \omit Staff.TimeSignature
      \cadenzaOn
      <d' f' a' c''>1^\markup { "Dm7" }
      <d' f' g' b'>1^\markup { "G7" }
      <c' e' g' b'>1^\markup { "CMaj7" }
      <c' ees' f' a'>1^\markup { "Cm7" }
      \bar "||"
    }
    \new Staff {
      \clef bass
      \omit Staff.TimeSignature
      \cadenzaOn
      d1 g1 c1 c1
      \bar "||"
    }
  >>
  \layout {}
}
