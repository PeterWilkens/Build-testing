\version "2.24.0"

%% "Alternate Pivots and Surrounds Down the C Bop Scale"
%% Arranged by Harry Likas
%%
%% C bop scale (descending): C B A Ab G F# F E D C
%%   (= C major + b6 = Ab, yielding an 8-note scale with two chromatic passing tones)
%%
%% The exercise alternates:
%%   Pivot  = inverted triad arpeggio (e.g. E-C-G-E, A-F-C-A …)
%%   Surround = three-note enclosure: step-above / target / half-step-below
%%              e.g. to surround A: B–A–G# (or Bb–A–G#)
%%
%% Chord progression per system: C | F | F#°7 | C/G | A7 | Dm7 | G7
%% All melody notes are 16th notes; each bar = 16 sixteenth notes.
%% Bar 1 opens with an 8th rest (= 2 sixteenth rests).
%%
%% Three systems, last ends with repeat barline.
%% Bass: whole notes on chord roots.

#(set-global-staff-size 13)

\paper {
  paper-width = 24\cm
  paper-height = 40\cm
  indent = 1.4\cm
  line-width = 23.2\cm
  top-margin = 0.5\cm
  bottom-margin = 0.5\cm
  left-margin = 0.4\cm
  right-margin = 0.4\cm
  print-page-number = ##f
  ragged-last = ##t
  tagline = ##f
  system-system-spacing.basic-distance = #22
  system-system-spacing.minimum-distance = #20
}

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  }
}

chordsProg = \chordmode {
  %% 7 bars per system × 3 systems = 21 bars
  c1 f1 fis1:dim7 c1/g a1:7 d1:m7 g1:7
  c1 f1 fis1:dim7 c1/g a1:7 d1:m7 g1:7
  c1 f1 fis1:dim7 c1/g a1:7 d1:m7 g1:7
}

%%
%% TRANSCRIPTION NOTES:
%%
%% Pivot triad patterns (root-position reading top-down):
%%   On C: notes  e''-c''-g' or c''-g'-e' (E-C-G = C major 1st inv.) etc.
%%   On A: a'-f'-c' (A-F-C = F major 2nd inv. = A minor triad root)
%%   On F#dim: fis'-dis'-ais or ais'-fis'-dis' (F#dim arp)
%%   On G: g'-e'-c' or b'-g'-d' (G triad)
%%   On A7: e'-cis'-a or cis'-a-e (A major)
%%   On D: d'-a-f or f'-d'-a (D minor or D7)
%%   On G7: b-g-d or d'-b-g (G triad)
%%
%% Surround patterns (step above → target → half-step below):
%%   Surround A:  b  – a  – gis   (or ais as chromatic)
%%   Surround G:  aes – g – fis
%%   Surround F:  ges – f – e
%%   Surround E:  f   – e – dis
%%   Surround D:  ees – d – cis
%%   Surround C:  des – c – b
%%   Surround B:  c   – b – ais
%%
%% System 1 scale degrees: 8 7 | 6 b6 | 5 | 4 3 | 2 | 8' 7' (wrapping down)
%% System 2: 6' b6' | 5' | 4' 3' | 2' | 8'' | 7'' b6'' | 5''
%% System 3: 4'' 3'' 2'' | 8''' | ... (chord-tone patterns lower register)
%%

treble = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \tempo 4 = 136

  %% ═══ SYSTEM 1 ═══  (8va — sounds one octave higher)
  \ottava #1

  %% Bar 1 – C  (deg 8→7)
  %% r8 pickup, Pivot C(1st inv E-C-G-E), Surround A (B-A-G#), Pivot E-C-G
  r8 e''16 c''   g'16 e' b' a'   gis'16 a' e' c'   g'16 e' r8 |

  %% Bar 2 – F  (deg 6→b6)
  %% Surround A cont., Pivot on A(A-F-C-A), Surround G (Bb-A-Gis... Ab-G-F#)
  b'16 a' gis' a'   f'16 c' a f   aes'16 g' fis' g'   r16 r8. |

  %% Bar 3 – F#°7  (deg 5)
  %% Pivot F#dim (A#-F#-D#-A#), Surround F# area... Surround G (Ab-G-F#)
  ais'16 fis' dis' ais   fis16 dis ais r   aes'16 g' fis' g'   r4 |

  %% Bar 4 – C/G  (deg 4→3)
  %% Pivot G-E-C, Surround F (Gb-F-E), Pivot E-C-G
  g'16 e' c' g   ges'16 f' e' f'   e'16 c' g e   r16 r8. |

  %% Bar 5 – A7  (deg 2)
  %% Surround D (Eb-D-C#), Pivot A-E-C#-A
  ees'16 d' cis' d'   a'16 e' cis' a   r16 r4..  |

  %% Bar 6 – Dm7  (lower 8')
  %% Pivot D-A-F (going down), Surround C (Db-C-B)
  d'16 a f d   des'16 c' b c'   r16 r4.. |

  %% Bar 7 – G7  (deg 7' entering lower 8va)
  %% Pivot B-G-D, Surround A (Bb-A-G#)
  b16 g d b,   bes16 a gis a   r16 r4.. |
  \ottava #0

  %% ═══ SYSTEM 2 ═══

  %% Bar 8 – C  (deg 6→b6)
  %% Pivot A-F-C, Surround G (Ab-G-F#), Pivot on C (E-C-G)
  a'16 f' c' a   aes'16 g' fis' g'   e'16 c' g e   r16 r8. |

  %% Bar 9 – F  (deg 5→4)
  %% Pivot C-A-F, Surround F (G-F-E)... Pivot F-C-A
  c''16 a' f' c'   g'16 f' e' f'   f'16 c' a f   r16 r8. |

  %% Bar 10 – F#°7  (deg 3→2)
  %% Pivot A#-F#-D#, Surround E (F-E-D#)
  ais'16 fis' dis' ais   f'16 e' dis' e'   r16 r4.. |

  %% Bar 11 – C/G  (deg 8'' - upper entry point lower)
  %% Going back up slightly then down: Pivot G-E-C, Surround D (Eb-D-C#)
  g'16 e' c' g   ees'16 d' cis' d'   r16 r4.. |

  %% Bar 12 – A7  (deg 7'')
  %% Pivot E-C#-A, Surround C (D-C-B) ... Surround B (C-B-A#)
  e'16 cis' a e   d'16 c' b c'   r16 r4.. |

  %% Bar 13 – Dm7  (deg b6'')
  %% Pivot D-A-F, Surround Bb (C-Bb-A)
  d'16 a f d   c'16 bes a bes   r16 r4.. |

  %% Bar 14 – G7  (deg 5'')
  %% Pivot B-G-D, Surround A (Bb-A-G#)
  b16 g d b,   bes16 a gis a   r16 r4.. |

  %% ═══ SYSTEM 3 ═══  (lower register, smaller note values → chords in treble)

  %% Bar 15 – C  (deg 4 3 2)
  %% Source shows block chords alternating with single notes — chord version
  <e' g' c''>16 <c' e' g'> <g e c> <e g c'>   <dis' fis' ais'> <c' e' g'> <g e c> <e g c'>
  <e' g' c''> <c' e' g'> <g e c> r   r4 |

  %% Bar 16 – F  (deg 8''')
  <f' a' c''>16 <c' f' a'> <a f c> <f a c'>   <e' g' c''> <c' e' g'> <g e c> <e g c'>
  r16 r r r   r4 |

  %% Bar 17 – F#°7
  <fis' ais' dis''>16 <dis' fis' ais'> <ais fis dis> <fis ais dis'>
  <e' g' c''> <c' e' g'> <g e c> <e g c'>   r4 r4 |

  %% Bar 18 – C/G
  <e' g' c''>16 <g, c e> <e, g, c> <c, e, g,>   <ees' g' c''> <c' ees' g'> <g ees c> r
  r4 r4 |

  %% Bar 19 – A7
  <e' a' cis''>16 <cis' e' a'> <a e cis> <e a cis'>   r4 r4 r4 |

  %% Bar 20 – Dm7
  <f' a' d''>16 <d' f' a'> <a f d> <f a d'>   r4 r4 r4 |

  %% Bar 21 – G7 with repeat
  <d' g' b'>16 <b g d> <g, d b,> <d, g, b,,>   r4 r2
  \bar ":|."
}

bass = \relative c, {
  \clef bass
  \key c \major
  \time 4/4

  %% System 1
  c1 | f1 | fis1 | g1 | a1 | d1 | g1 |
  %% System 2
  c1 | f1 | fis1 | g1 | a1 | d1 | g1 |
  %% System 3
  c1 | f1 | fis1 | g1 | a1 | d1 | g1 \bar ":|."
}

\score {
  <<
    \new ChordNames \chordsProg
    \new GrandStaff <<
      \new Staff { \treble }
      \new Staff { \bass }
    >>
  >>
}
