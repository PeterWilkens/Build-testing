\version "2.24.0"

%% Scale exercise: C Major in diatonic thirds with chromatic pickups
%% 6/8 time — chromatic leading note slurred into each target note
%% Ascending (bars 1–4) then descending (bars 5–8), all eighth notes from B below middle C

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
    \time 6/8
    %% Absolute notation — every octave explicit
    %% Each group: chromatic pickup (slurred) -> scale note -> diatonic third
    %% ASCENDING
    { b8( c'8) e'8   cis'8( d'8) f'8 |
      dis'8( e'8) g'8   e'8( f'8) a'8 |
      fis'8( g'8) b'8   gis'8( a'8) c''8 |
      ais'8( b'8) d''8   b'8( c''8) e''8 | \break
      %% DESCENDING
      ais'8( b'8) d''8   gis'8( a'8) c''8 |
      fis'8( g'8) b'8   e'8( f'8) a'8 |
      dis'8( e'8) g'8   cis'8( d'8) f'8 |
      b8( c'8) e'8   r4. \bar "||" }
  }
}
