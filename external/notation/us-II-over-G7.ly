\version "2.24.0"
#(set-global-staff-size 20)
\paper {
  indent = 0
  paper-width = 10\cm
  top-margin = 0.8\cm
  bottom-margin = 0.5\cm
  left-margin = 0.8\cm
  right-margin = 0.5\cm
  print-page-number = ##f
  ragged-right = ##t
  markup-markup-spacing.padding = #1
}
\score {
  \new PianoStaff <<
    \new Staff {
      \clef treble
      \key c \major
      \omit Staff.TimeSignature
      <a' cis'' e''>2^\markup { \column { \bold \small "G13(♯11)" \small "US II" } }
      \bar "||"
    }
    \new Staff {
      \clef bass
      \key c \major
      \omit Staff.TimeSignature
      <b f'>2
      \bar "||"
    }
  >>
  \layout { }
}
\markup {
  \italic \small "US II over G7: LH B–F (3rd + 7th), RH A–C♯–E (A major triad)"
}
