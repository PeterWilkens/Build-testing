\version "2.24.0"

%% Scale exercise: Diatonic 7th chord arpeggios with chromatic pickups
%% Common time (4/4)
%%
%% Pattern per bar: \tuplet3/2{root 3 5} 7th lead-in( \tuplet3/2{root 3 5} 7th lead-in(
%% Lead-in: last 8th of each group, semitone below next chord root, SLURRED (not tied)
%% Two chords per bar. No note above b' (first ledger above staff), none below b (below mid C)
%%
%% ASCENDING (root–3–5 triplet, then 7th, then chromatic lead-in slurred into next root):
%% Bar 1: b8 only (lead-in to Cmaj7), rest fills bar
%% Bar 2: Cmaj7 c'eg  b'  cis'(  /  Dm7 d'fa  c''  dis'(
%% Bar 3: Em7  e'gb'  d'' eis'(  /  Fmaj7 f'ac''  e'' fis'(
%% Bar 4: G7   g'b'd'' f'' gis'( /  Am7  a'c''e'' g'' ais'(
%% Bar 5: Bm7b5 b'd''f'' a'' ais'(  [a'' is the 7th, ais' leads down to b']
%%        then DESCENDING begins: slur ais'( into b' -- Cmaj7 desc
%%
%% DESCENDING (7–5–3–root, Cmaj7=b'gec', slurred lead-in to next chord's 7th):
%% Bar 5 second half: ais'( \tuplet3/2{b' g' e'} c' b(
%% Bar 6: \tuplet3/2{a' f' d'} b  ais( / \tuplet3/2{g' e' c'} a  gis(
%% Bar 7: \tuplet3/2{f' d' b} g  fis( / \tuplet3/2{e' c' a} f  eis(
%% Bar 8: \tuplet3/2{d' b g} e  dis( / \tuplet3/2{c' a f} d  cis(
%% Bar 9: \tuplet3/2{b g e} c'4  (final bar: triplet + 2 eighth + triplet + quarter)

#(set-global-staff-size 16)

\paper {
  paper-width = 24\cm
  paper-height = 15.0\cm
  indent = 0
  line-width = 23.6\cm
  top-margin = 0.3\cm
  bottom-margin = 0.3\cm
  left-margin = 0.2\cm
  right-margin = 0.2\cm
  print-page-number = ##f
  ragged-right = ##f
  ragged-last = ##t
  tagline = ##f
}

\layout {
  \context {
    \Score
    \override SpacingSpanner.uniform-stretching = ##t
    \override TupletBracket.bracket-visibility = ##f
  }
}

\score {
  \new Staff {
    \clef treble
    \key c \major
    \time 4/4
    %% Bar 1: lead-in B below middle C, rest fills bar
    r2 r4. b8( |
    %% Bar 2: Cmaj7 c'eg b'  /  Dm7 d'fa c''
    \tuplet 3/2 { c'8) e' g' } b'8 cis'8( \tuplet 3/2 { d'8) f' a' } c''8 dis'8( |
    %% Bar 3: Em7 e'gb' d''  /  Fmaj7 f'ac'' e''
    \tuplet 3/2 { e'8) g' b' } d''8 e'8( \tuplet 3/2 { f'8) a' c'' } e''8 fis'8( |
    %% Bar 4: G7 g'b'd'' f''  /  Am7 a'c''e'' g''
    \tuplet 3/2 { g'8) b' d'' } f''8 gis'8( \tuplet 3/2 { a'8) c'' e'' } g''8 ais'8( |
    %% Bar 5: Bm7b5 asc b'd''f'' a'' / Cmaj7 asc c''e''g''b'' (peak) -- lead-in ais''
    \tuplet 3/2 { b'8) d'' f'' } a''8 b'8( \tuplet 3/2 { c''8) e'' g'' } b''8 ais''8( | \break
    %% Bar 6: Cmaj7 desc b''g''e''c'' / Bm7b5 desc a''f''d''b'
    \tuplet 3/2 { b''8) g'' e'' } c''8 gis''8( \tuplet 3/2 { a''8) f'' d'' } b'8 fis''8( |
    %% Bar 7: Am7 desc g''e''c''a' / G7 desc f''d''b'g'
    \tuplet 3/2 { g''8) e'' c'' } a'8 e''8( \tuplet 3/2 { f''8) d'' b' } g'8 dis''8( |
    %% Bar 8: Fmaj7 desc e''c''a'f' / Em7 desc d''b'g'e'
    \tuplet 3/2 { e''8) c'' a' } f'8 cis''8( \tuplet 3/2 { d''8) b' g' } e'8 b'8( | \break
    %% Bar 9 (last): Dm7 desc c''a'f'd' / Cmaj7 desc b'g'e' c' quarter note
    \tuplet 3/2 { c''8) a' f' } d'8 ais'8( \tuplet 3/2 { b'8) g' e' } c'4 \bar "||"
  }
}
