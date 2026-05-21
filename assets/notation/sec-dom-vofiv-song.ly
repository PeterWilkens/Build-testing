%% Secondary Dominant V7/IV — "The Nearness of You" A section
%% C major: 7-bar harmonic reduction
%% G7sus4 | Cmaj7 | Dm7 | C7sus4 C7 | Fmaj7 | Fdim7 | Em7

\version "2.24.0"

#(set-global-staff-size 18)

\paper {
  indent = 0
  paper-width = 28\cm
  paper-height = 6\cm
  top-margin = 0.5\cm
  bottom-margin = 0.5\cm
  left-margin = 0.5\cm
  right-margin = 0.5\cm
  print-page-number = ##f
  tagline = ##f
}

chordNames = \chordmode {
  g1:7sus4 c:maj7 d:m7 c2:7sus4 c2:7 f1:maj7 f:dim7 e:m7
}

melody = {
  \clef treble
  \key c \major
  \time 4/4
  <g' c'' d'' f''>1_\markup { \small "V⁷sus" }
  <c' e' g' b'>1_\markup { \small "I△7" }
  <d' f' a' c''>1_\markup { \small "ii⁷" }
  <c' f' g' bes'>2_\markup { \small "V⁷sus/IV" } <c' e' g' bes'>2_\markup { \small "V⁷/IV" }
  <f' a' c'' e''>1_\markup { \small "IV△7" }
  <f' aes' b' d''>1_\markup { \small "IVo7" }
  <e' g' b' d''>1_\markup { \small "iii⁷" }
  \bar "|."
}

\score {
  <<
    \new ChordNames { \chordNames }
    \new Staff { \melody }
  >>
  \layout { }
}
