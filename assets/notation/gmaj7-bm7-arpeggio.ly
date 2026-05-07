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
  } <<
    %% Main voice: labelled arpeggio notes
    \new Voice {
      \override BalloonText.thickness = #0.4
      \override BalloonText.color = #(x11-color 'grey60)
      \clef treble
      \key g \major
      \cadenzaOn
      %% Bar 1: Gmaj7 arpeggio from root
      \once \override Score.RehearsalMark.direction = #DOWN
      \once \override Score.RehearsalMark.self-alignment-X = #LEFT
      \once \override Score.RehearsalMark.extra-offset = #'(-3 . 0)
      \mark \markup { \small \bold "Gmaj7" }
      \balloonGrobText #'NoteHead #'(0 . -6) \markup { \small "root" }
      g'4
      \balloonGrobText #'NoteHead #'(0 . -6) \markup { \small "3rd" }
      b'4
      \balloonGrobText #'NoteHead #'(0 . -6) \markup { \small "5th" }
      d''4
      \balloonGrobText #'NoteHead #'(0 . -6) \markup { \small "7th" }
      fis''4
      \bar "|"
      %% Bar 2: Bm7 — arpeggio from the 3rd of Gmaj7 (adds the 9th)
      \once \override Score.RehearsalMark.direction = #DOWN
      \once \override Score.RehearsalMark.self-alignment-X = #LEFT
      \once \override Score.RehearsalMark.extra-offset = #'(-2 . 0)
      \mark \markup { \small \bold "Bm7" }
      \balloonGrobText #'NoteHead #'(0 . -6) \markup { \small "root" }
      b'4
      \balloonGrobText #'NoteHead #'(0 . -6) \markup { \small "3rd" }
      d''4
      \balloonGrobText #'NoteHead #'(0 . -6) \markup { \small "5th" }
      fis''4
      \balloonGrobText #'NoteHead #'(0 . -7) \markup { \small "7th" }
      a''4
      \bar "|."
    }
    %% Connecting line: B (bar1, note 2) → B (bar2, note 1)
    \new Voice {
      \cadenzaOn
      \override TextSpanner.style = #'line
      \override TextSpanner.color = #(x11-color 'grey55)
      \override TextSpanner.thickness = #0.8
      \override TextSpanner.Y-offset = #6
      \override TextSpanner.outside-staff-priority = ##f
      \override TextSpanner.bound-details.left.text = \markup { \draw-line #'(0 . -6) }
      \override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . -6) }
      \override TextSpanner.bound-details.left.stencil-align-dir-y = #1
      \override TextSpanner.bound-details.right.stencil-align-dir-y = #1
      \override TextSpanner.bound-details.left.padding = #0
      \override TextSpanner.bound-details.right.padding = #0
      s4           % G — skip
      s4\startTextSpan  % B in bar 1
      s4 s4        % D, F# in bar 1
      s4\stopTextSpan   % B in bar 2
      s4 s4 s4     % D, F#, A in bar 2
    }
    %% Connecting line: D (bar1, note 3) → D (bar2, note 2)
    \new Voice {
      \cadenzaOn
      \override TextSpanner.style = #'line
      \override TextSpanner.color = #(x11-color 'grey55)
      \override TextSpanner.thickness = #0.8
      \override TextSpanner.Y-offset = #7
      \override TextSpanner.outside-staff-priority = ##f
      \override TextSpanner.bound-details.left.text = \markup { \draw-line #'(0 . -6) }
      \override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . -6) }
      \override TextSpanner.bound-details.left.stencil-align-dir-y = #1
      \override TextSpanner.bound-details.right.stencil-align-dir-y = #1
      \override TextSpanner.bound-details.left.padding = #0
      \override TextSpanner.bound-details.right.padding = #0
      s4 s4        % G, B — skip
      s4\startTextSpan  % D in bar 1
      s4           % F# in bar 1
      s4           % B in bar 2
      s4\stopTextSpan   % D in bar 2
      s4 s4        % F#, A in bar 2
    }
    %% Connecting line: F# (bar1, note 4) → F# (bar2, note 3)
    \new Voice {
      \cadenzaOn
      \override TextSpanner.style = #'line
      \override TextSpanner.color = #(x11-color 'grey55)
      \override TextSpanner.thickness = #0.8
      \override TextSpanner.Y-offset = #8
      \override TextSpanner.outside-staff-priority = ##f
      \override TextSpanner.bound-details.left.text = \markup { \draw-line #'(0 . -6) }
      \override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . -6) }
      \override TextSpanner.bound-details.left.stencil-align-dir-y = #1
      \override TextSpanner.bound-details.right.stencil-align-dir-y = #1
      \override TextSpanner.bound-details.left.padding = #0
      \override TextSpanner.bound-details.right.padding = #0
      s4 s4 s4     % G, B, D — skip
      s4\startTextSpan  % F# in bar 1
      s4 s4        % B, D in bar 2
      s4\stopTextSpan   % F# in bar 2
      s4           % A in bar 2
    }
  >>
  \layout { }
}
