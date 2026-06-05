\version "2.24.0"
#(set-global-staff-size 20)
\paper {
  indent = 0
  paper-width = 16\cm
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
      <f' a' c'' e''>2^\markup { \bold \small "Dm9" }
      <a' cis'' e''>2^\markup { \bold \small "G13(♯11)" }
      <e' g' b' d''>2^\markup { \bold \small "Cmaj9" }
      \bar "||"
    }
    \new Staff {
      \clef bass
      \key c \major
      \omit Staff.TimeSignature
      r2
      <b f'>2
      r2
      \bar "||"
    }
  >>
  \layout { }
}
\markup {
  \italic \small "IIm9–V7(US II)–Imaj9 in C: Dm9 rootless A, G13(♯11) US II, Cmaj9 rootless"
}
