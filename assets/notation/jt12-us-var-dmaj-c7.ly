\version "2.24.0"
#(set-global-staff-size 17)
\paper {
  indent = 0
  paper-width = 20\cm
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
      % Root position: D–F♯–A
      <d' fis' a'>1^\markup { \column { \bold \small "C7(♯11)" \small "root pos" } }
      % 1st inversion: F♯–A–D
      <fis' a' d''>1^\markup { \column { \bold \small "C7(♯11)" \small "1st inv" } }
      % 2nd inversion: A–D–F♯
      <a' d'' fis''>1^\markup { \column { \bold \small "C7(♯11)" \small "2nd inv" } }
      % 1–7–3 stretch in LH (D major RH same as root pos)
      <d' fis' a'>1^\markup { \column { \bold \small "C7(♯11)" \small "1–7–3 LH" } }
      \bar "||"
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
  \layout { }
}
\markup {
  \italic \small
  "D major upper structure over C7: inversions + 1–7–3 LH stretch (C2–B♭2–E3)"
}
