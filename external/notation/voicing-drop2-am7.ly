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
        <e g c>2^\markup { "Am7 drop 2" }
        \bar "||"
      }
    }
    \new Staff {
      \clef bass
      \key a \minor
      \omit Staff.TimeSignature
      \relative c' {
        <a, c>2
        \bar "||"
      }
    }
  >>
  \layout { }
}
\markup {
  \italic \small "Drop 2: 2nd note from top (A) moved to LH; melody in 10th intervals"
}
