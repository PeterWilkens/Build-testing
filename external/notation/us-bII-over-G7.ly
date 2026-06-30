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
          \override TextScript.Y-offset = #6
          s1^\markup { \translate #'(-2 . 0) { \bold \small "G7(♭9,♭13)" } }
          s1^\markup { \small "1st inv." }
          s1^\markup { \small "2nd inv." }
        }
        \new Voice {
          <aes' c'' ees''>1
          \bar "|"
          <c'' ees'' aes''>1
          \bar "|"
          <ees'' aes'' c'''>1
          \bar "||"
        }
      >>
    }
    \new Staff {
      \clef bass
      \key c \major
      \omit Staff.TimeSignature
      <b, f>1
      \bar "|"
      <b, f>1
      \bar "|"
      <b, f>1
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
    \italic \small "US ♭II over G7: LH B–F (3rd + 7th), RH A♭–C–E♭ (A♭ major triad) in root, 1st, and 2nd inversions"
  }
}
