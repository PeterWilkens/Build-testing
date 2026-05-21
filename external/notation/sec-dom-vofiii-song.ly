%% Secondary Dominant V7/iii — "The Best Thing for You" (Irving Berlin)
%% C major: 10-bar harmonic reduction across two lines
%% Line 1: B7 | Em7 | A7 | Dm7 | G7
%% Line 2: Cmaj7 | Am7 | Dm7 | G7 | Cmaj7

\version "2.24.0"

#(set-global-staff-size 18)

\paper {
  indent = 0
  paper-width = 20\cm
  paper-height = 11\cm
  top-margin = 0.5\cm
  bottom-margin = 0.5\cm
  left-margin = 0.5\cm
  right-margin = 0.5\cm
  system-system-spacing.basic-distance = #14
  print-page-number = ##f
  tagline = ##f
}

chordNames = \chordmode {
  b1:7 e:m7 a:7 d:m7 g:7
  c:maj7 a:m7 d:m7 g:7 c:maj7
}

melody = {
  \clef treble
  \key c \major
  \time 4/4
  <b dis' fis' a'>1_\markup { \small "V⁷/iii" }
  <e' g' b' d''>1_\markup { \small "iii⁷" }
  <a' cis'' e'' g''>1_\markup { \small "V⁷/ii" }
  <d' f' a' c''>1_\markup { \small "ii⁷" }
  <g' b' d'' f''>1_\markup { \small "V⁷" }
  \break
  <c' e' g' b'>1_\markup { \small "I△7" }
  <a' c'' e'' g''>1_\markup { \small "vi⁷" }
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
