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
      % Root position: A–C♯–E
      <a' cis'' e''>1^\markup { \column { \bold \small "C7(♭9)" \small "root pos" } }
      % 1st inversion: C♯–E–A
      <cis'' e'' a''>1^\markup { \column { \bold \small "C7(♭9)" \small "1st inv" } }
      % Cut off (dyad): A–C♯ only
      <a' cis''>1^\markup { \column { \bold \small "C7(♭9)" \small "cut off" } }
      % +octave doubling: A–C♯–E–A
      <a' cis'' e'' a''>1^\markup { \column { \bold \small "C7(♭9)" \small "+octave" } }
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
  "A major upper structure over C7: root position, 1st inversion, cut-off dyad, +octave"
}
