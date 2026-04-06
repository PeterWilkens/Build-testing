% B Harmonic Minor, bass shape
\version "2.24.2"
\header { title = "B Harmonic Minor, bass shape" }
bass = \relative b { b cis d e fis g aisis b }
\score {
  <<
    \new Staff {
      \clef bass
      \key b \minor
      \time 4/4
      \bass
    }
  >>
  \layout { }
  \midi { }
}
