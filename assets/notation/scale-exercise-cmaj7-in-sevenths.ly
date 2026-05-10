\version "2.24.0"

%% Scale exercise: Diatonic 7th Chord Arpeggios in C Major
%% Cmaj7, Dm7, Em7, Fmaj7, G7, Am7, Bm7b5, Cmaj7 — ascending then descending
%% All eighth notes, starting at middle C

#(set-global-staff-size 16)

\paper {
  paper-width = 24\cm
  paper-height = 11.0\cm
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
    %% Absolute notation — every octave explicit
    %% Line 1 ascending: Cmaj7  Dm7  Em7  Fmaj7  G7  Am7  Bm7b5  Cmaj7(8va)
    %% Line 2 descending: Cmaj7(8va)  Bm7b5  Am7  G7  Fmaj7  Em7  Dm7  Cmaj7
    { c'8 e' g' b'   d' f' a' c''   e' g' b' d''   f' a' c'' e''
      g' b' d'' f''   a' c'' e'' g''   b' d'' f'' a''   c'' e'' g'' b'' \break
      b'' g'' e'' c''   a'' f'' d'' b'   g'' e'' c'' a'   f'' d'' b' g'
      e'' c'' a' f'   d'' b' g' e'   c'' a' f' d'   b' g' e' c' \bar "||" }
  }
}
