\version "2.24.0"
% Rootless II–V–I Jazz Voicings in All Keys (A & B style)
% Converted from a-rootless-ii-v-i-jazz-voicings-in-all-the-keys-diatonic.mxl

\pointAndClickOff

#(set-global-staff-size 16)

\paper {
  paper-width = 22\cm
  paper-height = 20\cm
  indent = 1.5\cm
  top-margin = 1.0\cm
  bottom-margin = 0.5\cm
  left-margin = 0.5\cm
  right-margin = 0.5\cm
  print-page-number = ##f
  ragged-last = ##f
}

\header {
  title = "Rootless II–V–I Voicings in All Keys"
  subtitle = "A voicing (IIm9) and B voicing (V13) resolving to I Maj6/9"
  tagline = ##f
}

\layout {
  \context {
    \Score
    skipBars = ##t
    autoBeaming = ##f
  }
}

PartPOneVoiceOne = \relative ces' {
  \clef "treble" \numericTimeSignature \time 4/4 \key c \major
  | % 1 C major – IIm9 Dm9 / G13 / CMaj6/9
  R1 | % 2
  R1 \bar "||"
  \key bes \major
  R1 | % 4  Bb major
  R1 \bar "||"
  \key as \major
  r2 r2 | % 6  Ab major
  R1 \bar "||"
  \break
  \key ges \major
  \stemUp <ces es ges bes>2 \stemUp <ces es f bes>2 | % 8  Gb major
  <bes des es as>1 \bar "||"
  \key e \major
  \stemUp <a cis e gis>2 \stemUp <a cis dis gis>2 | % 10  E major
  <gis b cis fis>1 \bar "||"
  \key d \major
  \stemUp <g b d fis>2 \stemUp <g b cis fis>2 | % 12  D major
  <fis a b e>1 \bar "||"
  \break
  \key b \major
  r2 r2 | % 14  B major
  R1 \bar "||"
  \key a \major
  r2 r2 | % 16  A major
  R1 \bar "||"
  \key g \major
  \stemUp <c' e g b>2 \stemUp <c e fis b>2 | % 18  G major
  <b d e a>1 \bar "||"
  \break
  \key f \major
  \stemUp <bes d f a>2 \stemUp <bes d e a>2 | % 20  F major
  <a c d g>1 \bar "||"
  \key es \major
  \stemUp <as c es g>2 \stemUp <as c d g>2 | % 22  Eb major
  <g bes c f>1 \bar "||"
  \key des \major
  \stemUp <ges bes des f>2 \stemUp <ges bes c f>2 | % 24  Db major
  <f as bes es>1 \bar "|."
}

PartPOneVoiceOneChords = \chordmode {
  | % 1
  d2:m9 g2:13 c1:6.9
  c2:m9 f2:13 bes1:6.9
  bes2:m9 es2:13 | % 6
  as1:6.9 as2:m9 des2:13 | % 8
  ges1:6.9 \bar "||"
  fis2:m9 b2:13 | % 10
  e1:6.9 \bar "||"
  e2:m9 a2:13 | % 12
  d1:6.9 \bar "||"
  cis2:m9 fis2:13 | % 14
  b1:6.9
  b2:m9 e2:13 | % 16
  a1:6.9
  a2:m9 d2:13 | % 18
  g1:6.9 \bar "||"
  g2:m9 c2:13 | % 20
  f1:6.9 \bar "||"
  f2:m9 bes2:13 | % 22
  es1:6.9 \bar "||"
  es2:m9 as2:13 | % 24
  des1:6.9 \bar "|."
}

PartPOneVoiceFive = \relative d, {
  \clef "bass" \numericTimeSignature \time 4/4 \key c \major
  \stemDown d2 \stemDown g2 | % 2
  c,1 \bar "||"
  \key bes \major
  \stemDown c2 \stemDown f2 | % 4
  bes,1 \bar "||"
  \key as \major
  \stemDown bes2 \stemDown es2 | % 6
  as,1 \bar "||"
  \break
  \key ges \major
  \stemDown as'2 \stemDown des2 | % 8
  ges,1 \bar "||"
  \key e \major
  \stemUp fis2 \stemUp b2 | % 10
  e,1 \bar "||"
  \key d \major
  \stemUp e2 \stemUp a2 | % 12
  d,1 \bar "||"
  \break
  \key b \major
  \stemDown cis2 \stemDown fis2 | % 14
  <b, dis' fis gis cis>1 \bar "||"
  \key a \major
  \stemDown b2 \stemDown e2 | % 16
  <a, cis' e fis b>1 \bar "||"
  \key g \major
  \stemUp a'2 \stemUp d,2 | % 18
  g1 \bar "||"
  \break
  \key f \major
  \stemUp g2 \stemUp c2 | % 20
  f,1 \bar "||"
  \key es \major
  \stemUp f2 \stemUp bes2 | % 22
  es,1 \bar "||"
  \key des \major
  \stemUp es2 \stemUp as2 | % 24
  des,1 \bar "|."
}

PartPOneVoiceSix = \relative f {
  \clef "bass" \numericTimeSignature \time 4/4 \key c \major
  \stemUp <f a c e>2 \stemUp <f a b e>2 | % 2
  <e g a d>1 \bar "||"
  \key bes \major
  \stemUp <es g bes d>2 \stemUp <es g a d>2 | % 4
  <d f g c>1 \bar "||"
  \key as \major
  \stemDown <des f as c>2 \stemDown <des f g c>2 | % 6
  <c es f bes>1 \bar "||"
  \break
  \key ges \major
  s1*2 \bar "||"
  \key e \major
  s1*2 \bar "||"
  \key d \major
  s1*2 \bar "||"
  \break
  \key b \major
  \stemUp <e gis b dis>2 \stemUp <e gis ais dis>2 s1 \bar "||"
  \key a \major
  \stemUp <d fis a cis>2 \stemUp <d fis gis cis>2 s1 \bar "||"
  \key g \major
  s1*2 \bar "||"
  \break
  \key f \major
  s1*2 \bar "||"
  \key es \major
  s1*2 \bar "||"
  \key des \major
  s1*2 \bar "|."
}

\score {
  <<
    \context ChordNames = "PartPOneVoiceOneChords" { \PartPOneVoiceOneChords }
    \new PianoStaff <<
      \set PianoStaff.instrumentName = \markup { \center-column { "Piano" } }
      \set PianoStaff.shortInstrumentName = "Pno."
      \context Staff = "1" <<
        \mergeDifferentlyDottedOn \mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
      >>
      \context Staff = "2" <<
        \mergeDifferentlyDottedOn \mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceFive" { \voiceOne \PartPOneVoiceFive }
        \context Voice = "PartPOneVoiceSix" { \voiceTwo \PartPOneVoiceSix }
      >>
    >>
  >>
  \layout {}
}
