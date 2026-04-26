\version "2.24.0"

#(set-global-staff-size 40)

scaleDegreesAsc = \lyricmode {
  "1" "2" "b3" "4" "5" "b6" "6" "7" "8"
}

scaleDegreesDsc = \lyricmode {
  "8" "7" "6" "b6" "5" "4" "b3" "2" "1"
}

\paper {
  paper-width = 24\cm
  paper-height = 22.0\cm
  indent = 0
  line-width = 23.6\cm
  top-margin = 0.3\cm
  bottom-margin = 0.3\cm
  left-margin = 0.2\cm
  right-margin = 0.2\cm
  print-page-number = ##f
  ragged-right = ##t
  tagline = ##f
  score-system-spacing.basic-distance = #24
  score-system-spacing.minimum-distance = #20
  score-system-spacing.padding = #4
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
  }
}

\score {
  <<
    \new Staff {
      \clef treble
      \key c \minor
      \omit Staff.TimeSignature
      \new Voice = "ascScale" {
        { c'4 d' ees' f' g' aes' a' b' c'' \bar "||" }
      }
    }
    \new Lyrics \lyricsto "ascScale" \scaleDegreesAsc
  >>
}

\markup { \vspace #2 }

\score {
  <<
    \new Staff {
      \clef treble
      \key c \minor
      \omit Staff.TimeSignature
      \new Voice = "dscScale" {
        { c''4 b' a' aes' g' f' ees' d' c' \bar "||" }
      }
    }
    \new Lyrics \lyricsto "dscScale" \scaleDegreesDsc
  >>
}
