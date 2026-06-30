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
          s1^\markup { \column { \bold \small "C7(♯11)" \small "root pos" } }
          s1^\markup { \column { \bold \small "C7(♯11)" \small "1st inv" } }
          s1^\markup { \column { \bold \small "C7(♯11)" \small "2nd inv" } }
          s1^\markup { \column { \bold \small "C7(♯11)" \small "1–7–3 LH" } }
        }
        \new Voice {
          <d' fis' a'>1
          <fis' a' d''>1
          <a' d'' fis''>1
          <d' fis' a'>1
          \bar "||"
        }
      >>
    }
    \new Staff {
      \clef bass
      \key c \major
      \omit Staff.TimeSignature
      % Standard guide-tone LH for first three
      <e bes>1 <e bes>1 <e bes>1
      % 1–7–3 stretched LH: C2–B♭2–E3
      <c, bes, e>1
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
    "D major upper structure over C7: inversions + 1–7–3 LH stretch (C2–B♭2–E3)"
  }
}
