\version "2.24.0"

#(set-global-staff-size 14)

ascendingPlaceholders = \lyricmode {
  "2" "3" "2" "3" "4" "3" "4" "5" "0" "0" "0" "0" "0" "0" "0"
}

descendingPlaceholders = \lyricmode {
  "0" "0" "0" "0" "0" "0" "0" "5" "4" "3" "2" "3" "2" "3" "2"
}

\paper {
  paper-width = 24\cm
  paper-height = 8.4\cm
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
      \key c \minor
      \omit Staff.TimeSignature
      \new Voice = "ascendingScale" {
        { c,4 d, ees, f, g, aes, b, c d ees f g aes b c' \bar "||" }
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
      \key c \minor
      \omit Staff.TimeSignature
      \new Voice = "descendingScale" {
        { c'4 b aes g f ees d c b, aes, g, f, ees, d, c, \bar "||" }
      }
    }
    \new Lyrics \lyricsto "descendingScale" \descendingPlaceholders
  >>
}
