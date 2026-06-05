\version "2.24.0"
#(set-global-staff-size 15)
\paper {
  indent = 0
  paper-width = 28\cm
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
      <d' fis' a'>1^\markup {
        \column { \bold \small "C7 + D maj" \small "C7(♯11)" }
      }
      <ees' g' bes'>1^\markup {
        \column { \bold \small "C7 + E♭ maj" \small "C7(♯9)" }
      }
      <ees' ges' bes'>1^\markup {
        \column { \bold \small "C7 + E♭ min" \small "C7(♯9,♯11)" }
      }
      <fis' a' cis''>1^\markup {
        \column { \bold \small "C7 + F♯ min" \small "C7(♭9,♯11)" }
      }
      <fis' ais' cis''>1^\markup {
        \column { \bold \small "C7 + F♯ maj" \small "C7(♭9,♯11)" }
      }
      <aes' c'' ees''>1^\markup {
        \column { \bold \small "C7 + A♭ maj" \small "C7(♭13)" }
      }
      <a' cis'' e''>1^\markup {
        \column { \bold \small "C7 + A maj" \small "C7(♭9)" }
      }
      \bar "||"
    }
    \new Staff {
      \clef bass
      \key c \major
      \omit Staff.TimeSignature
      <e bes>1 <e bes>1 <e bes>1 <e bes>1 <e bes>1 <e bes>1 <e bes>1
      \bar "||"
    }
  >>
  \layout { }
}
\markup {
  \italic \small
  "LH: E–B♭ (guide tones: 3rd + 7th of C7)  ·  RH: upper-structure triad (root position)"
}
