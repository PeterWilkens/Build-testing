\version "2.24.0"
#(set-global-staff-size 58)
\paper {
  indent = 0
  paper-width = 96\cm
  top-margin = 1.2\cm
  bottom-margin = 0.5\cm
  left-margin = 0.5\cm
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
      \cadenzaOn
      c'1^\markup { \center-column { \bold \small "Dm7" \tiny "R+7" } }
      b'1^\markup { \center-column { \bold \small "G7" \tiny "R+10" } }
      b1^\markup { \center-column { \bold \small "CMaj7" \tiny "R+7" } }
      a'1^\markup { \center-column { \bold \small "Fmaj7" \tiny "R+10" } }
      \bar "|"
      a1^\markup { \center-column { \bold \small "Bm7b5" \tiny "R+7" } }
      gis'1^\markup { \center-column { \bold \small "E7" \tiny "R+10" } }
      g1^\markup { \center-column { \bold \small "Am7" \tiny "R+7" } }
      \bar "||"
    }
    \new Staff {
      \clef bass
      \key c \major
      \omit Staff.TimeSignature
      \cadenzaOn
      d1
      g1
      c1
      f1
      \bar "|"
      b,1
      e1
      a,1
      \bar "||"
    }
  >>
  \layout { }
}
\markup {
  \italic \small "R+10 shells – root (LH) + 10th (RH) replacing R+3; R+7 positions unchanged"
}
