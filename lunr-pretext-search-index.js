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
  "id": "ch-chapter-title",
  "level": "1",
  "url": "ch-chapter-title.html",
  "type": "Chapter",
  "number": "1",
  "title": "About This Document",
  "body": " About This Document   The material in this document is written for the C System Chromatic Button Accordion with both Stradella and Free Bass.  It is not an Accordion Tutor but covers material that I have found useful in learning about the Accordion after many years of playing the Guitar.  Where I have covered a topic I have attempted to include as much information as is needed to assist someone new to the Accordion to understand the topic.  The Manual will focus primarily on Chord and Scale construction on both Treble and Free Bass keyboards.  I was drawn to the button accordion, rather than the piano accordion, noting that Chord and Scale construction on this type of keyboard allow the use of moveable shapes specific to different Chord and Scale Types. Each shape may be moved anywhere on the keyboard giving a chord or scale identified by the Tonic in the shape.  Thus knowledge of any single shape enables the player to generate the chord type represented by that shape all over the keyboard in all keys.  This use of keyboard shapes is similar to the way in which different Chords and Scales are represented (Tab) in many resources used by Guitar Players; removing the need to read music whilst still being able to learn about Scale and Chord construction.  The shapes shown for the treble keyboard are mirrored on the free-bass keyboard so it is easy to generate the chord shapes for the bass once you have grasped how the the treble side works.  As a matter of interest, on the button accordion, chord shapes are consistent across the keyboard, unlike on the guitar where the interval between strings alters between the third and second string which necessitates some alteration of chord shapes in that area of the fingerboard.  The main scales and chord types (in various inversions) will be considered.   "
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
