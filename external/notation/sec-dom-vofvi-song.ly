%% Secondary Dominant V7/vi — "Georgia on My Mind" opening
%% C major: 8-bar harmonic reduction
%% Cmaj7 | Bm7b5 | E7 | Am7 | Am7/G | D/F# | Fm6 | Em7

\version "2.24.0"

#(set-global-staff-size 18)

\paper {
  indent = 0
  paper-width = 30\cm
  paper-height = 6\cm
  top-margin = 0.5\cm
  bottom-margin = 0.5\cm
  left-margin = 0.5\cm
  right-margin = 0.5\cm
  print-page-number = ##f
  tagline = ##f
}

chordNames = \chordmode {
  c1:maj7 b:m7.5- e:7 a:m7 a1:m7/g d1/fis f1:m6 e:m7
}

melody = {
  \clef treble
  \key c \major
  \time 4/4
  <c' e' g' b'>1_\markup { \small "I△7" }
  <b d' f' a'>1_\markup { \small "iiø7/vi" }
  <e' gis' b' d''>1_\markup { \small "V⁷/vi" }
  <a' c'' e'' g''>1_\markup { \small "vi⁷" }
  <g' a' c'' e''>1_\markup { \small "vi⁷/V" }
  <fis' a' d''>1_\markup { \small "II/♯IV" }
  <f' aes' c'' d''>1_\markup { \small "iv6" }
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
