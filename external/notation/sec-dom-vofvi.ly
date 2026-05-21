%% Secondary Dominant V7/vi in C major
%% C (I) → E7 (V7/vi) → Am (vi)
%% Song context: "Georgia on My Mind" (Hoagy Carmichael, 1930)

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
  c1 e:7 a:m
}

melody = {
  \clef treble
  \key c \major
  \time 4/4
  <c' e' g'>1_\markup { \small "I" }
  <e' gis' b' d''>1_\markup { \small "V⁷/vi" }
  <a' c'' e''>1_\markup { \small "vi" }
  \bar "|."
}

\score {
  <<
    \new ChordNames { \chordNames }
    \new Staff { \melody }
  >>
  \layout { }
}
