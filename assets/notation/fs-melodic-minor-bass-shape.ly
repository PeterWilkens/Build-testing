% F# Melodic Minor, bass shape
\version "2.24.2"
\header { title = "F# Melodic Minor, bass shape" }
bass = \relative fis { fis gis a b cis dis eis fis }
\score {
  <<
    \new Staff {
      \clef bass
      \key fis \minor
      \time 4/4
      \bass
    }
    \addlyrics { 1 2 3 4 1 2 3 4 }
  >>
  \layout { }
  \midi { }
}
