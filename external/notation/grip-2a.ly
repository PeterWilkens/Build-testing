\version "2.24.0"

\pointAndClickOff

#(set-global-staff-size 16)

\paper {
  paper-width = 2\cm
  paper-height = 2.2\cm
  indent = 0\cm
  top-margin = 0.1\cm
  bottom-margin = 0.1\cm
  left-margin = 0.1\cm
  right-margin = 0.1\cm
  print-page-number = ##f
  tagline = ##f
  ragged-right = ##f
}

\score {
  \new Staff {
    \clef treble
    \omit Staff.TimeSignature
    \cadenzaOn
    <f' a' b' e''>1
    \bar "|."
  }
  \layout {}
}
