\version "2.24.0"

%% Scale exercise: Cmaj7 "In Triads — Variation"
%% Descending variation pattern

#(set-global-staff-size 16)

\paper {
  paper-width = 24\cm
  paper-height = 9.0\cm
  indent = 0
  line-width = 23.6\cm
  top-margin = 0.3\cm
  bottom-margin = 0.3\cm
  left-margin = 0.2\cm
  right-margin = 0.2\cm
  print-page-number = ##f
  ragged-right = ##f
  tagline = ##f
}

\layout {
  \context {
    \Score
    \override SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new Staff {
    \clef treble
    \key c \major
    \time 4/4
    %% Absolute notation — every octave explicit, c''8 sets eighth duration
    { c''8 a' f' c''   b' g' e' b'   a' f' d' a'   g' e' c' g'' \break
      f' d' b f'   e' c' a e'   d' b g d'   c' a f4 \bar "||" }
  }
}
