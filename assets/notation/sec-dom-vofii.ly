%% Secondary Dominant V7/ii in C major
%% A7 (V7/ii) → Dm7 (ii7) → G7 (V7) → Cmaj7 (Imaj7)
%% Song context: "Crazy" (Willie Nelson / Patsy Cline, 1961)

\version "2.24.0"

#(set-global-staff-size 18)

\paper {
  indent = 0
  paper-width = 22\cm
  paper-height = 6\cm
  top-margin = 0.5\cm
  bottom-margin = 0.5\cm
  left-margin = 0.5\cm
  right-margin = 0.5\cm
  print-page-number = ##f
  tagline = ##f
}

chordNames = \chordmode {
  a1:7 d:m7 g:7 c:maj7
}

melody = {
  \clef treble
  \key c \major
  \time 4/4
  <a' cis'' e'' g''>1_\markup { \small "V⁷/ii" }
  <d' f' a' c''>1_\markup { \small "ii⁷" }
  <g' b' d'' f''>1_\markup { \small "V⁷" }
  <c' e' g' b'>1_\markup { \small "I▵⁷" }
  \bar "|."
}

\score {
  <<
    \new ChordNames { \chordNames }
    \new Staff { \melody }
  >>
  \layout { }
}
