% B Harmonic Minor, two octaves, treble clef
\version "2.24.2"
\header { title = "B Harmonic Minor, two octaves" }
melody = \relative b' { b cis d e fis g aisis b a g fis e d cis b }
\score {
  <<
    \new Staff {
      \clef treble
      \key b \minor
      \time 4/4
      \melody
    }
  >>
  \layout { }
  \midi { }
}
