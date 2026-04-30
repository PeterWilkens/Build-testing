%% Connor: Barry Harris..."Basics" of Dom 7 Scale (#8)
%% https://youtu.be/kCSB_iUW5Uk
%% Transcript: R.Glover 26-Aug-2017
%% Revised to match Noteflight score:
%% https://www.noteflight.com/scores/view/20669ed431146d4e9e6e519bd14f10c2dd32be7b

\version "2.24.0"

\paper {
  #(set-paper-size "letter")
  top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 15\mm
  right-margin = 15\mm
  indent = 0\mm
  ragged-last-bottom = ##t
}

\layout {
  \context {
    \Score
    \omit BarNumber
    \override BarNumber.break-visibility = #all-visible
    barNumberVisibility = #(every-nth-bar-number-visible 1)
    \revert BarNumber.break-visibility
  }
}

global = {
  \key bes \major
  \time 4/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example 1: mm. 1-5  Scale outline (from previous video)
%%   m1: rest; m2 [Bb7]: Bb3-Ab4 (7 notes + rest)
%%   m3 [Eb7]: Eb4-Db5 (7 notes + rest)
%%   m4 [Bb7]: Bb3-Ab4-G4 (ascending + return)
%%   m5: F4 Eb4 D4 C4 Bb3 (desc, 5 eighth notes + rests)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exOneRH = \relative c' {
  \global
  \tempo 4=120
  r1
  bes8 c d ees f g aes r8
  ees8 f g aes bes c des r8
  bes,8 c d ees f g aes g
  f8 ees d c bes r8 r4
}

exOneLH = \relative c {
  \global
  \tempo 4=120
  r1 r1 r1 r1 r1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example 2: mm. 6-9  Scale up and down
%%   Ascending Bb3-Ab4 (7 notes) + G4 turnaround
%%   Descending F4-Eb4-D4-C4-Bb3 (half note)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exTwoRH = \relative c' {
  \global
  bes8 c d ees f g aes g
  f8 ees d c bes2
  bes8 c d ees f g aes g
  f8 ees d c bes2
}

exTwoLH = \relative c {
  \global
  r1 r1 r1 r1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example 3: mm. 10-12  Thirds (broken / alternating)
%%   Each "third" played as lower note then upper note
%%   Ascending through Bb7 scale thirds
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exThreeRH = \relative c' {
  \global
  bes8 d  c ees  d f  ees g
  f aes  g bes  aes c  bes d~
  d2 r2
}

exThreeLH = \relative c {
  \global
  r1 r1 r1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example 4: mm. 13-18  Scale triads (quarter notes)
%%   Diatonic 7th chord tones of Bb7 in quarter notes,
%%   ascending through all 8 scale-degree triads
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exFourRH = \relative c' {
  \global
  bes4 d f c
  ees g d f
  aes ees g bes
  f aes c g
  bes d aes c
  ees bes d f
}

exFourLH = \relative c {
  \global
  r1 r1 r1 r1 r1 r1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example 5: mm. 19-21  7th-chord arpeggios (16ths)
%%   Four 7th chords each bar, each chord = root 3rd 5th 7th
%%   Chords: Bb7 Cm7 Dm7b5 EbM7 | Fm7 Gm7 AbM7 Bb7(high)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exFiveRH = \relative c' {
  \global
  bes16 d f aes  c, ees g bes  d, f aes c  ees, g bes d
  f,16 aes c ees  g, bes d f  aes, c ees g  bes, d f aes~
  aes4 r2.
}

exFiveLH = \relative c {
  \global
  r1 r1 r1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example 6: mm. 22-23  "Like that" vs "like this"
%%   m22: Bb3 D4 D4 rest
%%   m23: A3 Bb3 D4(half)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exSixRH = \relative c' {
  \global
  bes4 d~ d r
  a4 bes d2
}

exSixLH = \relative c {
  \global
  r1 r1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example 7: mm. 24-26  Approach notes slow (12/8)
%%   Each beat = approach(half-step below) + 2 scale tones
%%   Scale degrees: Bb C D | Eb F G | Ab Bb
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exSevenRH = \relative c' {
  \global
  \time 12/8
  a8 bes d  b c ees  des d f  d ees g
  e f aes  ges g bes  g aes c  a bes d~
  d2. r2.
}

exSevenLH = \relative c {
  \global
  \time 12/8
  r1. r1. r1.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example 8: mm. 27-29  Approach notes at tempo (12/8)
%%   Same pattern as mm. 24-26
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exEightRH = \relative c' {
  \global
  \time 12/8
  a8 bes d  b c ees  des d f  d ees g
  e f aes  ges g bes  g aes c  a bes d~
  d2. r2.
}

exEightLH = \relative c {
  \global
  \time 12/8
  r1. r1. r1.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example 9: mm. 30-32  Triads w/ approach (16ths, 4/4)
%%   Each group of 4 = approach + root + 3rd + 5th
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exNineRH = \relative c' {
  \global
  \time 4/4
  a16 bes d f  b, c ees g  des d f aes  d, ees g bes
  e,16 f aes c  ges g bes d  g, aes c ees  a, bes d f~
  f2 r2
}

exNineLH = \relative c {
  \global
  \time 4/4
  r1 r1 r1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example 10: mm. 33-37  Dom-7 chords w/ approach (12/8)
%%   Pickup in m33; chords in m34-37
%%   m34 (12 eighths): Bb3 D4 F4 Ab4 | Ab4 B3 C4 Eb4 G4 Bb4 | Bb4 Db4
%%   m35: D4 F4 Ab4 C5 | C5 D4 Eb4 G4 Bb4 D5 | D5 E4
%%   m36: F4 Ab4 C5 Eb5 | Eb5 Gb4 G4 Bb4 D5 F5 | F5 G4
%%   m37: Ab4 C5 Eb5 G5 | G5 A4 Bb4 D5 F5 Ab5 | Ab5(qtr)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exTenRH = \relative c'' {
  \global
  \time 12/8
  r8 r8 a, r4. r4. r4.
  bes8 d f aes~  aes b, c ees g bes~  bes des,
  d8 f aes c~  c d, ees g bes d~  d e,
  f8 aes c ees~  ees ges, g bes d f~  f g,
  aes8 c ees g~  g a, bes d f aes~  aes4
}

exTenLH = \relative c {
  \global
  \time 12/8
  r1. r1. r1. r1. r1.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example 11: mm. 38-40  Major arpeggios (12/8)
%%   m38 [Bb]: Bb3 D4 F4 Bb4 F4 D4 Bb3(dotted half)
%%   m39: rest
%%   m40 [Ab]: Ab3 C4 Eb4 Ab4 Eb4 C4 Ab3(dotted half)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exElevenRH = \relative c'' {
  \global
  \time 12/8
  bes,8 d f bes f d bes2.
  r1.
  aes8 c ees aes ees c aes2.
}

exElevenLH = \relative c {
  \global
  \time 12/8
  r1.
  f8 aes c f c f d2.
  r1.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example 12: mm. 41-44  Ab-major inversions (4/4)
%%   m41: r8 Eb4 Ab4 Db5 C5 Ab4 Eb4 C4
%%   m42: F4(half) rest
%%   m43: repeat m41
%%   m44: C4(half) rest
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exTwelveRH = \relative c' {
  \global
  \time 4/4
  r8 ees aes des c aes ees c
  f2 r2
  r8 ees aes des c aes ees c~
  c2 r2
}

exTwelveLH = \relative c {
  \global
  \time 4/4
  r1 r1 r1 r1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example 13: mm. 45-50  Augmented arpeggio + inversions (12/8)
%%   Bb augmented = Bb3 D4 Gb4 (F#)
%%   m45: root pos; m46: rest; m47: root pos
%%   m48: 1st inv (D4 base); m49: 2nd inv (Gb3 base); m50: root pos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exThirteenRH = \relative c'' {
  \global
  \time 12/8
  bes,8 d ges bes ges d bes2.
  r1.
  bes8 d ges bes ges d bes2.
  d8 ges bes d bes ges d2.
  ges,8 bes d ges d bes ges2.
  bes8 d ges bes ges d bes2.
}

exThirteenLH = \relative c {
  \global
  \time 12/8
  r1. r1. r1. r1. r1. r1.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example 14: mm. 51-55  "Chi Chi" reference + descent (4/4)
%%   m51: Bb3 D4 C4 Eb4 D4 F4 Eb4 G4 (broken thirds)
%%   m52: F4 Ab4 G4 Bb4 Ab4 C5 Bb4(qtr)
%%   m53: D5 Bb4 C5 Ab4 Bb4 G4 Ab4 F4 (descending)
%%   m54: G4 Eb4 F4 D4 Eb4 C4 D4 Bb3
%%   m55: Bb3(half) rest
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exFourteenRH = \relative c' {
  \global
  \time 4/4
  bes8 d c ees d f ees g
  f aes g bes aes c bes4
  d8 bes c aes bes g aes f
  g ees f d ees c d bes~
  bes2 r2
}

exFourteenLH = \relative c {
  \global
  \time 4/4
  r1 r1 r1 r1 r1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example 15: mm. 56-57  Descending triads (12/8 → 4/4)
%%   m56 (12/8): F5 D5 Bb4 | Eb5 C5 Ab4 | D5 Bb4 G4 | C5 Ab4 F4
%%   m57 (4/4): Bb4 G4 Eb4 + rests
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exFifteenRH = \relative c'' {
  \global
  \time 12/8
  f8 d bes  ees c aes  d bes g  c aes f
  \time 4/4
  bes8 g ees r4 r2
}

exFifteenLH = \relative c {
  \global
  \time 12/8
  r1.
  \time 4/4
  r1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example 16: mm. 58-59  Descending 7th chords (16ths, 4/4)
%%   m58: Ab5 F5 D5 Bb4 | G5 Eb5 C5 Ab4 | F5 D5 Bb4 G4 | Eb5 C5 Ab4 F4
%%   m59: D5 Bb4 G4 Eb4 + rests
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exSixteenRH = \relative c''' {
  \global
  \time 4/4
  aes16 f d bes  g' ees c aes  f' d bes g  ees' c aes f
  d'16 bes g ees r4 r2
}

exSixteenLH = \relative c {
  \global
  \time 4/4
  r1 r1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example 17: mm. 60-63  Bbdim7 → Bb7, dim7 scale run (4/4)
%%   m60: B3/8 D4/8 <D4 F4>/8 <D4 F4 Ab4>/half <Bb3 D4 F4 Ab4>/qtr
%%   m61: <Bb3 D4 F4 Ab4>/qtr rest
%%   m62: B3 D4 F4 Ab4 D4 F4 Ab4 B4 F4 Ab4 B4 D5 Ab4 B4 D5 F5
%%   m63: F5(half) rest
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exSeventeenRH = \relative c'' {
  \global
  \time 4/4
  b,8 d <d f>8 <d f aes>2 <bes d f aes>4
  <bes d f aes>4 r2.
  b16 d f aes  d, f aes b  f aes b d  aes, b d' f'
  f2 r2
}

exSeventeenLH = \relative c {
  \global
  \time 4/4
  r1 r1 r1 r1
}

%% ============================================================
%% Score sections — each score block becomes one page of SVG
%% ============================================================

%%  ---- Score 1: mm. 1-5  Scale outline ----
\score {
  \new GrandStaff <<
    \new Staff { \clef treble \exOneRH }
    \new Staff { \clef bass   \exOneLH }
  >>
}

%%  ---- Score 2: mm. 6-9  Scale up and down ----
\score {
  \new GrandStaff <<
    \new Staff { \clef treble \exTwoRH }
    \new Staff { \clef bass   \exTwoLH }
  >>
  \header { piece = \markup { \bold "m. 6" } }
}

%%  ---- Score 3: mm. 10-12  Thirds ----
\score {
  \new GrandStaff <<
    \new Staff { \clef treble \exThreeRH }
    \new Staff { \clef bass   \exThreeLH }
  >>
  \header { piece = \markup { \bold "m. 10" } }
}

%%  ---- Score 4: mm. 13-18  Triads ----
\score {
  \new GrandStaff <<
    \new Staff { \clef treble \exFourRH }
    \new Staff { \clef bass   \exFourLH }
  >>
  \header { piece = \markup { \bold "m. 13" } }
}

%%  ---- Score 5: mm. 19-21  7th-chord arpeggios ----
\score {
  \new GrandStaff <<
    \new Staff { \clef treble \exFiveRH }
    \new Staff { \clef bass   \exFiveLH }
  >>
  \header { piece = \markup { \bold "m. 19" } }
}

%%  ---- Score 6: mm. 22-23  Comparison ----
\score {
  \new GrandStaff <<
    \new Staff { \clef treble \exSixRH }
    \new Staff { \clef bass   \exSixLH }
  >>
  \header { piece = \markup { \bold "m. 22" } }
}

%%  ---- Score 7: mm. 24-26  Approach (slow, 12/8) ----
\score {
  \new GrandStaff <<
    \new Staff { \clef treble \exSevenRH }
    \new Staff { \clef bass   \exSevenLH }
  >>
  \header { piece = \markup { \bold "m. 24" } }
}

%%  ---- Score 8: mm. 27-29  Approach (tempo, 12/8) ----
\score {
  \new GrandStaff <<
    \new Staff { \clef treble \exEightRH }
    \new Staff { \clef bass   \exEightLH }
  >>
  \header { piece = \markup { \bold "m. 27" } }
}

%%  ---- Score 9: mm. 30-32  Triad approach 16ths (4/4) ----
\score {
  \new GrandStaff <<
    \new Staff { \clef treble \exNineRH }
    \new Staff { \clef bass   \exNineLH }
  >>
  \header { piece = \markup { \bold "m. 30" } }
}

%%  ---- Score 10: mm. 33-37  7th-chord approach (12/8) ----
\score {
  \new GrandStaff <<
    \new Staff { \clef treble \exTenRH }
    \new Staff { \clef bass   \exTenLH }
  >>
  \header { piece = \markup { \bold "m. 33" } }
}

%%  ---- Score 11: mm. 38-40  Major arpeggios (12/8) ----
\score {
  \new GrandStaff <<
    \new Staff { \clef treble \exElevenRH }
    \new Staff { \clef bass   \exElevenLH }
  >>
  \header { piece = \markup { \bold "m. 38" } }
}

%%  ---- Score 12: mm. 41-44  Ab-maj inversions (4/4) ----
\score {
  \new GrandStaff <<
    \new Staff { \clef treble \exTwelveRH }
    \new Staff { \clef bass   \exTwelveLH }
  >>
  \header { piece = \markup { \bold "m. 41" } }
}

%%  ---- Score 13: mm. 45-50  Aug arpeggio + inversions (12/8) ----
\score {
  \new GrandStaff <<
    \new Staff { \clef treble \exThirteenRH }
    \new Staff { \clef bass   \exThirteenLH }
  >>
  \header { piece = \markup { \bold "m. 45" } }
}

%%  ---- Score 14: mm. 51-55  Chi Chi + descent (4/4) ----
\score {
  \new GrandStaff <<
    \new Staff { \clef treble \exFourteenRH }
    \new Staff { \clef bass   \exFourteenLH }
  >>
  \header { piece = \markup { \bold "m. 51" } }
}

%%  ---- Score 15: mm. 56-57  Descending triads (12/8+4/4) ----
\score {
  \new GrandStaff <<
    \new Staff { \clef treble \exFifteenRH }
    \new Staff { \clef bass   \exFifteenLH }
  >>
  \header { piece = \markup { \bold "m. 56" } }
}

%%  ---- Score 16: mm. 58-59  Descending 7th chords 16ths (4/4) ----
\score {
  \new GrandStaff <<
    \new Staff { \clef treble \exSixteenRH }
    \new Staff { \clef bass   \exSixteenLH }
  >>
  \header { piece = \markup { \bold "m. 58" } }
}

%%  ---- Score 17: mm. 60-63  Bbdim7 → Bb7 + scale run (4/4) ----
\score {
  \new GrandStaff <<
    \new Staff { \clef treble \exSeventeenRH }
    \new Staff { \clef bass   \exSeventeenLH }
  >>
  \header { piece = \markup { \bold "m. 60" } }
}
