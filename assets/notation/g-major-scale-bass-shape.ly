\version "2.24.0"

#(set-global-staff-size 12)

ascendingPlaceholders = \lyricmode {
  "2" "3" "4" "2" "3" "4" "5" "" "0" "0" "0" "0" "0" "0" "0"
}

descendingPlaceholders = \lyricmode {
  "0" "0" "0" "0" "0" "0" "0" "4" "5" "4" "3" "2" "4" "3" "2"
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
      \key g \major
      \omit Staff.TimeSignature
      \new Voice = "ascendingScale" {
        {
          g,4 a, b, c d e fis g a b c' d' e' fis' g' \bar "||"
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
      \key g \major
      \omit Staff.TimeSignature
      \new Voice = "descendingScale" {
        {
          g'4 fis' e' d' c' b a g fis e d c b, a, g, \bar "||"
        }
      }
    }
    \new Lyrics \lyricsto "descendingScale" \descendingPlaceholders
  >>
}