\version "2.24.4"

%% "Example of Upper Voicings based on C7 as the left hand triad."
%% Recreation of the Bijan Taghavi "Polychords" reference chart.
%% Left hand = C7 shell (guide tones E-B-flat); right hand = upper-structure triad.

#(set-global-staff-size 18)

%% Polychord label: numerator triad over a rule over the C7 denominator.
#(define-markup-command (poly layout props num den) (markup? markup?)
   (let* ((sa (interpret-markup layout props #{ \markup \bold #num #}))
          (sb (interpret-markup layout props den))
          (wa (interval-length (ly:stencil-extent sa X)))
          (wb (interval-length (ly:stencil-extent sb X)))
          (w  (+ 0.4 (max wa wb))))
     (interpret-markup layout props
       #{ \markup \override #'(baseline-skip . 1.7) \center-column {
            \line { \bold #num }
            \draw-line #(cons w 0)
            \line { #den } } #})))

cSeven = \markup \concat { "C" \super "7" }

%% above-staff polychord labels (one per bar)
above = {
  \override TextScript.outside-staff-priority = ##f
  \override TextScript.Y-offset = #7
  %% Row 1 - major triads
  s1^\markup \poly "D"  \cSeven
  s1^\markup \poly "E♭" \cSeven
  s1^\markup \poly "G♭" \cSeven
  s1^\markup \poly "A♭" \cSeven
  s1^\markup \poly "A"  \cSeven
  %% Row 2 - minor triads
  s1^\markup \poly \concat { "C"  \small \caps " min" } \cSeven
  s1^\markup \poly \concat { "C♯" \small \caps " min" } \cSeven
  s1^\markup \poly \concat { "E♭" \small \caps " min" } \cSeven
  s1^\markup \poly \concat { "F♯" \small \caps " min" } \cSeven
  s1^\markup \poly \concat { "G"  \small \caps " min" } \cSeven
  s1^\markup \poly \concat { "A"  \small \caps " min" } \cSeven
  %% Row 3 - augmented triads
  s1^\markup \poly \concat { "C"  \super "+" } \cSeven
  s1^\markup \poly \concat { "D"  \super "+" } \cSeven
  s1^\markup \poly \concat { "E"  \super "+" } \cSeven
  s1^\markup \poly \concat { "F♯" \super "+" } \cSeven
  s1^\markup \poly \concat { "A♭" \super "+" } \cSeven
  s1^\markup \poly \concat { "B♭" \super "+" } \cSeven
  %% Row 4 - diminished triads
  s1^\markup \poly \concat { "C"  \small \caps " dim" } \cSeven
  s1^\markup \poly \concat { "C♯" \small \caps " dim" } \cSeven
  s1^\markup \poly \concat { "D♯" \small \caps " dim" } \cSeven
  s1^\markup \poly \concat { "E"  \small \caps " dim" } \cSeven
  s1^\markup \poly \concat { "F♯" \small \caps " dim" } \cSeven
  s1^\markup \poly \concat { "G"  \small \caps " dim" } \cSeven
  s1^\markup \poly \concat { "A"  \small \caps " dim" } \cSeven
  s1^\markup \poly \concat { "B♭" \small \caps " dim" } \cSeven
}

%% resulting C7 alteration labels (one per bar, below the treble staff)
res = {
  \override TextScript.outside-staff-priority = ##f
  \override TextScript.Y-offset = #-6
  %% Row 1
  s1_\markup \concat { "C" \super "13(♯11)" }
  s1_\markup \concat { "C" \super "7(♯9)" }
  s1_\markup \concat { "C" \super \line { "7" \center-column { \small "♭9" \small "♯11" } } }
  s1_\markup \concat { "C" \super \line { "7" \center-column { \small "♯9" \small "♭13" } } }
  s1_\markup \concat { "C" \super "13(♭9)" }
  %% Row 2
  s1_\markup \concat { "C" \super "7(♯9)" }
  s1_\markup \concat { "C" \super \line { "7" \center-column { \small "♭9" \small "♯5" } } }
  s1_\markup \concat { "C" \super \line { "7" \center-column { \small "♯9" \small "♭5" } } }
  s1_\markup \concat { "C" \super \line { "7" \center-column { \small "♭9" \small "♭5" } } }
  s1_\markup \concat { "C" \super "9" }
  s1_\markup \concat { "C" \super "7(13)" }
  %% Row 3
  s1_\markup \concat { "C" \super "7(♯5)" }
  s1_\markup \concat { "C" \super "7(♯11)" }
  s1_\markup \concat { "C" \super "7(♯5)" }
  s1_\markup \concat { "C" \super "7(♯11)" }
  s1_\markup \concat { "C" \super "7(♯5)" }
  s1_\markup \concat { "C" \super "7(♯11)" }
  %% Row 4
  s1_\markup \concat { "C" \super \line { "7" \center-column { \small "♯9" \small "♭5" } } }
  s1_\markup \concat { "C" \super "7(♭9)" }
  s1_\markup \concat { "C" \super \line { "7" \center-column { \small "♯9" \small "♯11" } } }
  s1_\markup \concat { "C" \super "7" }
  s1_\markup \concat { "C" \super "13(♯11)" }
  s1_\markup \concat { "C" \super "7(♭9)" }
  s1_\markup \concat { "C" \super "7(13)" }
  s1_\markup \concat { "C" \super "7(♭9)" }
}

%% invisible strut to force extra space between systems (system-system-spacing
%% is ignored under -dcrop, so a tall white grob is used instead).
rowGap = \markup \with-color #white \draw-line #'(0 . 16)

upper = {
  %% Row 1 (6 bars): D E♭ G♭ A♭ A  C-min
  <d' fis' a'>1 <ees' g' bes'>1 <ges' bes' des''>1 <aes' c'' ees''>1 <a' cis'' e''>1 <c' ees' g'>1 \break
  %% Row 2 (6 bars): C♯-min E♭-min F♯-min G-min A-min  C+
  <cis' e' gis'>1 ^\rowGap <ees' ges' bes'>1 <fis' a' cis''>1 <g' bes' d''>1 <a' c'' e''>1 <c' e' gis'>1 \break
  %% Row 3 (6 bars): D+ E+ F♯+ A♭+ B♭+  C-dim
  <d' fis' ais'>1 ^\rowGap <e' gis' bis'>1 <fis' ais' cisis''>1 <aes' c'' e''>1 <bes' d'' fis''>1 <c' ees' ges'>1 \break
  %% Row 4 (7 bars): C♯-dim D♯-dim E-dim F♯-dim G-dim A-dim B♭-dim
  <cis' e' g'>1 ^\rowGap <dis' fis' a'>1 <e' g' bes'>1 <fis' a' c''>1 <g' bes' des''>1 <a' c'' ees''>1 <bes' des'' e''>1
}

lower = {
  \clef bass
  \repeat unfold 25 { <e bes>1 }
}

\score {
  \new PianoStaff <<
    \new Staff <<
      \new Voice { \upper }
      \new Voice \above
      \new Voice \res
    >>
    \new Staff { \lower }
  >>
  \layout {
    \context {
      \Score
      \omit BarNumber
      proportionalNotationDuration = #(ly:make-moment 1/4)
      \override SpacingSpanner.uniform-stretching = ##t
      \override SpacingSpanner.strict-note-spacing = ##t
    }
    \context {
      \Staff
      \override TimeSignature.stencil = ##f
    }
    ragged-right = ##t
  }
}

\paper {
  paper-width = 26\cm
  indent = 0
  ragged-bottom = ##t
}
