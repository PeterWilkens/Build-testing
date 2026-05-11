\version "2.24.0"

%% Chromatic Scale exercise — common time (4/4), all eighth notes
%%
%% C major scale tones fall on each beat. The off-beat is filled with:
%%   - chromatic passing tone (semitone above when ascending, below when descending)
%%   - upper scale tone when two consecutive scale tones already form a semitone
%%       ascending:  E + G  (E–F is a semitone; upper tone G fills the off-beat)
%%                   B + D' (B–C is a semitone; upper tone D' fills the off-beat)
%%                   C' + D' (turnaround at peak)
%%       descending: F + G  (F–E is a semitone; upper tone G fills the off-beat)
%%
%% Ascending sharps; descending flats.
%% Last bar: 4 eighth notes + half note.

#(set-global-staff-size 16)

\paper {
  paper-width = 24\cm
  paper-height = 6.5\cm
  indent = 0
  line-width = 23.6\cm
  top-margin = 0.3\cm
  bottom-margin = 0.3\cm
  left-margin = 0.2\cm
  right-margin = 0.2\cm
  print-page-number = ##f
  ragged-right = ##f
  ragged-last = ##t
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
    %% Bar 1 – ascending: C C#  D D#  E G(upper)  F F#
    c'8 cis' d' dis'  e' g' f' fis' |
    %% Bar 2 – ascending: G G#  A A#  B D''(upper)  C'' D''(turnaround)
    g' gis' a' ais'  b' d'' c'' d'' |
    %% Bar 3 – descending: B Bb  A Ab  G Gb  F G(upper)
    b' bes' a' aes'  g' ges' f' g' |
    %% Bar 4 – descending + final: E Eb  D Db  C(half note)
    e'8 ees' d' des'  c'2 \bar "|."
  }
}
