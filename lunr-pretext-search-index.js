var ptx_lunr_search_style = "textbook";
var ptx_lunr_docs = [
{
  "id": "front-colophon",
  "level": "1",
  "url": "front-colophon.html",
  "type": "Colophon",
  "number": "",
  "title": "Colophon",
  "body": "  "
},
{
  "id": "sec-section-name",
  "level": "1",
  "url": "sec-section-name.html",
  "type": "Section",
  "number": "1.1",
  "title": "C System Treble Keyboard Layout Diagram",
  "body": " C System Treble Keyboard Layout Diagram   Treble Side Keyboard. Vertical lines represent Bellows      "
},
{
  "id": "tikz-example",
  "level": "2",
  "url": "sec-section-name.html#tikz-example",
  "type": "Figure",
  "number": "1.1.1",
  "title": "",
  "body": " Treble Side Keyboard. Vertical lines represent Bellows     "
},
{
  "id": "sec-free-bass-keyboard-layout",
  "level": "1",
  "url": "sec-free-bass-keyboard-layout.html",
  "type": "Section",
  "number": "1.2",
  "title": "C System Free Bass Keyboard Layout Diagram",
  "body": " C System Free Bass Keyboard Layout Diagram   Free Bass Keyboard. Vertical lines represent Bellows      "
},
{
  "id": "freebass",
  "level": "2",
  "url": "sec-free-bass-keyboard-layout.html#freebass",
  "type": "Figure",
  "number": "1.2.1",
  "title": "",
  "body": " Free Bass Keyboard. Vertical lines represent Bellows     "
},
{
  "id": "sec-stradella-bass-keyboard-layout",
  "level": "1",
  "url": "sec-stradella-bass-keyboard-layout.html",
  "type": "Section",
  "number": "1.3",
  "title": "Stradella Bass Keyboard Layout",
  "body": " Stradella Bass Keyboard Layout  This section will cover the layout of the Stradella bass keyboard and its use in chord and scale construction.   Stradella Bass Keyboard. Vertical lines represent Bellows      "
},
{
  "id": "stradella",
  "level": "2",
  "url": "sec-stradella-bass-keyboard-layout.html#stradella",
  "type": "Figure",
  "number": "1.3.1",
  "title": "",
  "body": " Stradella Bass Keyboard. Vertical lines represent Bellows     "
},
{
  "id": "sec-iso-grid-intro",
  "level": "1",
  "url": "sec-iso-grid-intro.html",
  "type": "Section",
  "number": "2.1",
  "title": "Treble Keyboard Note Layout",
  "body": " Treble Keyboard Note Layout  An isometric grid visualization created using TiKZ.   Treble Keyboard Note Layout      "
},
{
  "id": "fig-iso-grid",
  "level": "2",
  "url": "sec-iso-grid-intro.html#fig-iso-grid",
  "type": "Figure",
  "number": "2.1.1",
  "title": "",
  "body": " Treble Keyboard Note Layout     "
},
{
  "id": "sec-chord-builds-intro",
  "level": "1",
  "url": "sec-chord-builds-intro.html",
  "type": "Section",
  "number": "3.1",
  "title": "Chord Builds",
  "body": " Chord Builds  An isometric grid visualization created using TiKZ.   Chord Builds      "
},
{
  "id": "fig-chord-builds",
  "level": "2",
  "url": "sec-chord-builds-intro.html#fig-chord-builds",
  "type": "Figure",
  "number": "3.1.1",
  "title": "",
  "body": " Chord Builds     "
},
{
  "id": "sec-Cmaj-allinversions-intro",
  "level": "1",
  "url": "sec-Cmaj-allinversions-intro.html",
  "type": "Section",
  "number": "4.1",
  "title": "C Major Chords",
  "body": " C Major Chords  An isometric grid visualization created using TiKZ.   C Major Chords      "
},
{
  "id": "fig-Cmaj-allinversions",
  "level": "2",
  "url": "sec-Cmaj-allinversions-intro.html#fig-Cmaj-allinversions",
  "type": "Figure",
  "number": "4.1.1",
  "title": "",
  "body": " C Major Chords     "
},
{
  "id": "backmatter-2",
  "level": "1",
  "url": "backmatter-2.html",
  "type": "Colophon",
  "number": "",
  "title": "Colophon",
  "body": " This book was authored in PreTeXt .  "
}
]

var ptx_lunr_idx = lunr(function () {
  this.ref('id')
  this.field('title')
  this.field('body')
  this.metadataWhitelist = ['position']

  ptx_lunr_docs.forEach(function (doc) {
    this.add(doc)
  }, this)
})
