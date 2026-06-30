\version "2.24.0"
#(set-global-staff-size 20)
\paper {
  indent = 0
  paper-width = 40\cm
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
          \override TextScript.Y-offset = #7
          s1^\markup { \column { \small "C7 + D maj" \bold \small "C7(♯11)" } }
          s1^\markup { \column { \small "C7 + E♭ maj" \bold \small "C7(♯9)" } }
          s1^\markup { \column { \small "C7 + E♭ min" \bold \small "C7(♯9,♯11)" } }
          s1^\markup { \column { \small "C7 + F♯ min" \bold \small "C7(♭9,♯11)" } }
          s1^\markup { \column { \small "C7 + F♯ maj" \bold \small "C7(♭9,♯11)" } }
          s1^\markup { \column { \small "C7 + A♭ maj" \bold \small "C7(♭13)" } }
          s1^\markup { \column { \small "C7 + A maj" \bold \small "C7(♭9)" } }
        }
        \new Voice {
          <d' fis' a'>1
          <ees' g' bes'>1
          <ees' ges' bes'>1
          <fis' a' cis''>1
          \break
          <fis' ais' cis''>1^\markup \with-color #white \draw-line #'(0 . 16)
          <aes' c'' ees''>1
          <a' cis'' e''>1
          \bar "||"
        }
      >>
    }
    \new Staff {
      \clef bass
      \key c \major
      \omit Staff.TimeSignature
      <e bes>1 <e bes>1 <e bes>1 <e bes>1
      <e bes>1 <e bes>1 <e bes>1
      \bar "||"
    }
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner.uniform-stretching = ##t
      \override SpacingSpanner.strict-note-spacing = ##t
      proportionalNotationDuration = #(ly:make-moment 1/2)
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/44)
      \omit BarNumber
    }
  }
}
\markup {
  \column {
    \with-color #white \draw-line #'(0 . 5)
    \italic \small
    "LH: E–B♭ (guide tones: 3rd + 7th of C7)  ·  RH: upper-structure triad (root position)"
  }
}
