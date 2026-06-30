\version "2.24.0"
#(set-global-staff-size 20)
\paper {
  indent = 0
  paper-width = 20\cm
  top-margin = 0.8\cm
  bottom-margin = 0.6\cm
  left-margin = 0.8\cm
  right-margin = 0.8\cm
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
          \override TextScript.Y-offset = #8
          s1^\markup { \column { \bold \small "C7(♭13)" \small "root pos" } }
          s1^\markup { \column { \bold \small "C7(♭13)" \small "1st inv" } }
          s1^\markup { \column { \bold \small "C7(♭13)" \small "cut off" } }
          s1^\markup { \column { \bold \small "C7(♭13)" \small "+octave" } }
        }
        \new Voice {
          <aes' c'' ees''>1
          <c'' ees'' aes''>1
          <aes' c''>1
          <aes' c'' ees'' aes''>1
          \bar "||"
        }
      >>
    }
    \new Staff {
      \clef bass
      \key c \major
      \omit Staff.TimeSignature
      <e bes>1 <e bes>1 <e bes>1 <e bes>1
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
    \italic \small
    "A♭ major upper structure over C7: inversions, cut-off dyad, and +octave doubling"
  }
}
