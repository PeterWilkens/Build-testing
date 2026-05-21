%% Secondary Dominant V7/iii in C major
%% C (I) → B7 (V7/iii) → Em (iii)
%% Song context: "The Best Thing for You" (Irving Berlin, 1950)

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
  c1 b:7 e:m
}

melody = {
  \clef treble
  \key c \major
  \time 4/4
  <c' e' g'>1_\markup { \small "I" }
  <b dis' fis' a'>1_\markup { \small "V⁷/iii" }
  <e' g' b'>1_\markup { \small "iii" }
  \bar "|."
}

\score {
  <<
    \new ChordNames { \chordNames }
    \new Staff { \melody }
  >>
  \layout { }
}
