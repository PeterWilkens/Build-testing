\version "2.24.0"
#(set-global-staff-size 20)
\paper {
  indent = 0
  paper-width = 20\cm
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
      <<
        \new Voice {
          \override TextScript.outside-staff-priority = ##f
          \override TextScript.Y-offset = #5
          s1^\markup { \bold \small "Dm9" }
          s1^\markup { \bold \small "G13(♯11)" }
          s1^\markup { \bold \small "Cmaj9" }
        }
        \new Voice {
          <f' a' c'' e''>1
          \bar "|"
          <a' cis'' e''>1
          \bar "|"
          <e' g' b' d''>1
          \bar "||"
        }
      >>
    }
    \new Staff {
      \clef bass
      \key c \major
      \omit Staff.TimeSignature
      r1
      \bar "|"
      <b, f>1
      \bar "|"
      r1
      \bar "||"
    }
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }
}
\markup {
  \column {
    \with-color #white \draw-line #'(0 . 5)
    \italic \small "IIm9–V7(US II)–Imaj9 in C: Dm9 rootless A, G13(♯11) US II, Cmaj9 rootless"
  }
}
