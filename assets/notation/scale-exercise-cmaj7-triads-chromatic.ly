\version "2.24.0"

%% Scale exercise: C Major diatonic triads with chromatic pickups
%% 4/4 time — chromatic leading note (semitone below) slurred into each triad top note
%% Each group: pickup(slurred)->root->3rd->5th ascending, pickup->5th->3rd->root descending
%% Ascending (bars 1-4) then descending (bars 5-8), all eighth notes

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
    %% ASCENDING: pickup(slur)->root-3rd-5th per group
    { b8( c'8) e'8 g'8   cis'8( d'8) f'8 a'8 |
      dis'8( e'8) g'8 b'8   e'8( f'8) a'8 c''8 |
      fis'8( g'8) b'8 d''8   gis'8( a'8) c''8 e''8 |
      ais'8( b'8) d''8 f''8   b'8( c''8) e''8 g''8 | \break
      %% DESCENDING: pickup(slur)->5th-3rd-root per group
      fis''8( g''8) e''8 c''8   e''8( f''8) d''8 b'8 |
      dis''8( e''8) c''8 a'8   cis''8( d''8) b'8 g'8 |
      b'8( c''8) a'8 f'8   ais'8( b'8) g'8 e'8 |
      gis'8( a'8) f'8 d'8   fis'8( g'8) e'8 c'8 \bar "||" }
  }
}
