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
    \new Staff \with {
      instrumentName = \markup { \bold "Grip" }
    } {
      \clef treble
      \omit Staff.TimeSignature
      \cadenzaOn
      <f' a' c'' e''>1^\markup { "FMaj7" }
      <f' a' b' e''>1^\markup { "F Lydian" }
      <e' g' b' d''>1^\markup { "Emi7" }
      <g' bes' des'' f''>1^\markup { "Gmi7b5" }
      <f' a' c'' e''>1^\markup { "FMaj7" }
      \bar "||"
    }
    \new Staff \with {
      instrumentName = \markup { \bold "Chord" }
      \override StaffSymbol.line-count = #0
    } {
      \omit Staff.Clef
      \omit Staff.TimeSignature
      \override Staff.BarLine.bar-extent = #'(-3 . 3)
      \cadenzaOn
      s1^\markup { \bold "Dmi9" }
      s1^\markup { \bold "G13" }
      s1^\markup { \bold "CMaj9" }
      s1^\markup { \bold "A7(b9#5)" }
      s1^\markup { \bold "Dmi9" }
      \bar "||"
    }
    \new Staff {
      \clef bass
      \omit Staff.TimeSignature
      \cadenzaOn
      d1 g1 c1 a1
      d1
      \bar "||"
    }
  >>
  \layout {}
}
