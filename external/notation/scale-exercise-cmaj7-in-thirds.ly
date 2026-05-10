\version "2.24.0"

%% Scale exercise: Cmaj7 "In Thirds"
%% Ascending and descending Cmaj7 scale in diatonic thirds

#(set-global-staff-size 16)

\paper {
  paper-width = 24\cm
  paper-height = 7.0\cm
  indent = 0
  line-width = 23.6\cm
  top-margin = 0.3\cm
  bottom-margin = 0.3\cm
  left-margin = 0.2\cm
  right-margin = 0.2\cm
  print-page-number = ##f
  ragged-right = ##t
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
    %% Notes 1-10 in middle octave (correct)
    %% Notes 11-24 lowered 2 octaves
    { \clef treble \key c \major \time 4/4
      c'8 e' d' f'  e' g' f' a'  g' b'
      c'' e''  e'' c'' b' g'  a' f' g' e'  f' d' e' c' \bar "||" 
    }
  }
}
