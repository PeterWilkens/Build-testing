\version "2.24.0"

#(set-global-staff-size 12)

% ---------------------------------------------------------------
% FINGERING NUMBERS — edit these to change what appears under the notes.
% Bass hand (LH): 2-octave C major scale, bass clef.
% Each number corresponds to one note, left to right.
% Valid fingers: 1 (index) 2 (middle) 3 (ring) 4 (little)
% After editing, recompile:
%   lilypond --svg -dpreview -o c-major-scale-bass-shape c-major-scale-bass-shape.ly
% ---------------------------------------------------------------

% Ascending: C D E F G A B  C D E F G A B  C  (15 notes)
ascendingPlaceholders = \lyricmode {
  "2" "3" "4" "3" "4" "2" "3" "4" "0" "0" "0" "0" "0" "0" "0"
}

% Descending: C B A G F E D  C B A G F E D  C  (15 notes)
descendingPlaceholders = \lyricmode {
  "4" "3" "2" "4" "3" "2" "3" "2" "0" "0" "0" "0" "0" "0" "0"
}

\paper {
  paper-width = 24\cm
  paper-height = 7.2\cm
  indent = 0
  line-width = 23.6\cm
  top-margin = 0.1\cm
  bottom-margin = 0.1\cm
  left-margin = 0.2\cm
  right-margin = 0.2\cm
  print-page-number = ##f
  ragged-right = ##t
  tagline = ##f
  score-system-spacing.basic-distance = #24
  score-system-spacing.minimum-distance = #20
  score-system-spacing.padding = #6
}

\layout {
  \context {
    \Score
    \override SpacingSpanner.uniform-stretching = ##t
  }
  \context {
    \Lyrics
    \override LyricText.font-size = #-1
    \override LyricText.self-alignment-X = #CENTER
    \override LyricHyphen.minimum-distance = #1.0
  }
}

\score {
  <<
    \new Staff {
      \clef bass
      \key c \major
      \omit Staff.TimeSignature
      \new Voice = "ascendingScale" {
        \relative c, {
          c4 d e f g a b c d e f g a b c \bar "||"
        }
      }
    }
    \new Lyrics \lyricsto "ascendingScale" \ascendingPlaceholders
  >>
}

\markup { \vspace #2.5 }

\score {
  <<
    \new Staff {
      \clef bass
      \key c \major
      \omit Staff.TimeSignature
      \new Voice = "descendingScale" {
        \relative c' {
          c4 b a g f e d c b a g f e d c \bar "||"
        }
      }
    }
    \new Lyrics \lyricsto "descendingScale" \descendingPlaceholders
  >>
}