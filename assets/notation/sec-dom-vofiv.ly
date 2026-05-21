%% Secondary Dominant V7/IV in C major
%% C (I) → C7 (V7/IV) → F (IV)
%% Song context: "The Nearness of You" (Carmichael / Washington, 1937)

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
  c1 c:7 f
}

melody = {
  \clef treble
  \key c \major
  \time 4/4
  <c' e' g'>1_\markup { \small "I" }
  <c' e' g' bes'>1_\markup { \small "V⁷/IV" }
  <f' a' c''>1_\markup { \small "IV" }
  \bar "|."
}

\score {
  <<
    \new ChordNames { \chordNames }
    \new Staff { \melody }
  >>
  \layout { }
}
