%% Secondary Dominant V7/ii — "Crazy" opening phrase
%% C major: 5-bar harmonic reduction
%% Cmaj7 | A7 | Dm7 | G7 | Cmaj7

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
  c1:maj7 a:7 d:m7 g:7 c:maj7
}

melody = {
  \clef treble
  \key c \major
  \time 4/4
  <c' e' g' b'>1_\markup { \small "I△7" }
  <a' cis'' e'' g''>1_\markup { \small "V⁷/ii" }
  <d' f' a' c''>1_\markup { \small "ii⁷" }
  <g' b' d'' f''>1_\markup { \small "V⁷" }
  <c' e' g' b'>1_\markup { \small "I△7" }
  \bar "|."
}

\score {
  <<
    \new ChordNames { \chordNames }
    \new Staff { \melody }
  >>
  \layout { }
}
