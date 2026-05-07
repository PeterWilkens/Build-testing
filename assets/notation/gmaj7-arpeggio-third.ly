\version "2.24.4"

#(set-global-staff-size 20)

\paper {
  indent = 0
  paper-width = 18\cm
  line-width = 17\cm
  top-margin = 0.5\cm
  bottom-margin = 3\cm
  left-margin = 0.5\cm
  right-margin = 0.5\cm
  print-page-number = ##f
  ragged-right = ##t
  tagline = ##f
}

\score {
  \new Staff \with {
    \consists "Balloon_engraver"
  } {
    \clef treble
    \key g \major
    \cadenzaOn
    \once \override Score.RehearsalMark.direction = #DOWN
    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'(-5 . 0)
    \mark \markup { \small \bold "Gmaj7" }
    \balloonGrobText #'NoteHead #'(0 . -8) \markup { \small "root" }
    g''8[
    ais'8
    \balloonGrobText #'NoteHead #'(0 . -7) \markup { \small "3rd" }
    b'8
    \balloonGrobText #'NoteHead #'(0 . -8) \markup { \small "7th" }
    fis''8]
    e''8[
    \balloonGrobText #'NoteHead #'(0 . -7) \markup { \small "5th" }
    d''8]
    r4
    \bar "|."
  }
  \layout { }
}
