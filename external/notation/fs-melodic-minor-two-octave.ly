% F# Melodic Minor, two octaves, treble clef
\version "2.24.2"
\header { title = "F# Melodic Minor, two octaves" }
melody = \relative fis' { fis gis a b cis dis eis fis eis dis cis b a gis fis }
\score {
  <<
    \new Staff {
      \clef treble
      \key fis \minor
      \time 4/4
      \melody
    }
    \addlyrics { 1 2 3 1 2 3 4 5 4 3 2 1 3 2 1 }
  >>
  \layout { }
  \midi { }
}
