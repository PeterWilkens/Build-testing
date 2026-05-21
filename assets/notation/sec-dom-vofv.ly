%% Secondary Dominant V7/V in C major
%% D7 (V7/V) → G7 (V7) → C (I)
%% Song context: "Tequila" (The Champs, 1958)

\version "2.24.0"

#(set-global-staff-size 18)

\paper {
  indent = 0
  paper-width = 17\cm
  paper-height = 6\cm
  top-margin = 0.5\cm
  bottom-margin = 0.5\cm
  left-margin = 0.5\cm
  right-margin = 0.5\cm
  print-page-number = ##f
  tagline = ##f
}

chordNames = \chordmode {
  d1:7 g:7 c
}

melody = {
  \clef treble
  \key c \major
  \time 4/4
  <d' fis' a' c''>1_\markup { \small "V⁷/V" }
  <g' b' d'' f''>1_\markup { \small "V⁷" }
  <c' e' g'>1_\markup { \small "I" }
  \bar "|."
}

\score {
  <<
    \new ChordNames { \chordNames }
    \new Staff { \melody }
  >>
  \layout { }
}
