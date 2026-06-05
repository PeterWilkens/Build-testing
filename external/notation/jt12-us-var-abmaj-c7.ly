\version "2.24.0"
#(set-global-staff-size 17)
\paper {
  indent = 0
  paper-width = 20\cm
  top-margin = 0.8\cm
  bottom-margin = 0.6\cm
  left-margin = 0.8\cm
  right-margin = 0.8\cm
  print-page-number = ##f
  ragged-right = ##f
  markup-markup-spacing.padding = #1
}
\score {
  \new PianoStaff <<
    \new Staff {
      \clef treble
      \key c \major
      \omit Staff.TimeSignature
      % Root position: A♭–C–E♭
      <aes' c'' ees''>1^\markup { \column { \bold \small "C7(♭13)" \small "root pos" } }
      % 1st inversion: C–E♭–A♭
      <c'' ees'' aes''>1^\markup { \column { \bold \small "C7(♭13)" \small "1st inv" } }
      % Cut off (dyad): A♭–C only
      <aes' c''>1^\markup { \column { \bold \small "C7(♭13)" \small "cut off" } }
      % +octave doubling: A♭–C–E♭–A♭
      <aes' c'' ees'' aes''>1^\markup { \column { \bold \small "C7(♭13)" \small "+octave" } }
      \bar "||"
    }
    \new Staff {
      \clef bass
      \key c \major
      \omit Staff.TimeSignature
      <e bes>1 <e bes>1 <e bes>1 <e bes>1
      \bar "||"
    }
  >>
  \layout { }
}
\markup {
  \italic \small
  "A♭ major upper structure over C7: inversions, cut-off dyad, and +octave doubling"
}
