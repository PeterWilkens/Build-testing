\version "2.24.0"

%% Scale exercise: Cmaj7 "In Triads"
%% Cmaj7 scale in diatonic triads, ascending and descending

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
    %% Absolute notation — no relative mode, every octave explicit
    { c'8 e' g' e'   d' f' a' f'   e' g' b' g'   f' a' c'' a'
      g' b' d'' b'   a' c'' e'' c''   b' d'' f'' d''   c'' e'' g'' e'' \break
      g'' e'' c'' e''   f'' d'' b' d''   e'' c'' a' c''   d'' b' g' b'
      c'' a' f' a'   b' g' e' g'   a' f' d' f'   g' e' c'4 \bar "||" }
  }
}
