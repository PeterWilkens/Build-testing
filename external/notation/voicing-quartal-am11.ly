\version "2.24.0"
#(set-global-staff-size 20)
\paper {
  indent = 0
  paper-width = 8\cm
  top-margin = 0.5\cm
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
      \key a \minor
      \omit Staff.TimeSignature
      \relative c' {
        <d g c>2^\markup { "Am11 quartal" }
        \bar "||"
      }
    }
    \new Staff {
      \clef bass
      \key a \minor
      \omit Staff.TimeSignature
      \relative c {
        <e a>2
        \bar "||"
      }
    }
  >>
  \layout { }
}
\markup {
  \italic \small "Quartal voicing: stacked perfect 4ths E–A–D–G–C"
}
