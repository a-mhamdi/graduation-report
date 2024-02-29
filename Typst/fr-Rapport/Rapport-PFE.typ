// RAPPORT PFE
#import "Class.typ": *

#import "common/metadata.typ": *
#import "common/titlepage.typ": *

#import "@preview/colorful-boxes:1.2.0": outlinebox

#set document(author: author, title: title, keywords: "rapport, pfe, projet, typst", date: auto)

// The project function is called with the content of the document.
#show: report.with(
  title: title,
  diploma: diploma,
  program: program,
  supervisor: supervisor,
  author: author,
  date: date,
)

#titlepage(
  title: title,
  diploma: diploma,
  program: program,
  supervisor: supervisor,
  author: author,
  date: date
)

#set math.equation(numbering: "(1)" )

/* ### Rapport PFE ### */

// TOC
#set page(numbering: "i")
#counter(page).update(1)
#outline(depth: 3, indent: auto)
// LOF
#pagebreak()
#outline(
  title: [Liste des figures],
  target: figure.where(kind: image),
)
// LOT
#pagebreak()
#outline(
  title: [Liste des tableaux],
  target: figure.where(kind: table),
)

#pagebreak()
#pagebreak()
#place(bottom + right, box(width: 256pt, text(emph(dedication))))

#set heading(numbering: none)
#chap("Remerciements") // ACK
#ack

#set page(numbering: "1")
#counter(page).update(1)
#chap("Introduction générale") // GI
#include "chaps/intro.typ"
#set heading(numbering: "1.", supplement: [Chapter])
#chap(chap1) // Chapter 1
#include "chaps/chpt1.typ"
#chap(chap2) // Chapter 2
#include "chaps/chpt2.typ"
#chap(chap3) // Chapter 3
#include "chaps/chpt3.typ"
#set heading(numbering: none)
#chap("Conclusion générale") // GC
#include "chaps/outro.typ"

// --- References ---
#chap("Bibliographie")
#set page(header: smallcaps(title) + h(1fr) + emph("Bibliographie") + line(length: 100%))
#text(white)[#heading(bookmarked: true)[Bibliographie]]#v(-1cm)
#bibliography("Biblio.bib", title: none, full: true, style: "ieee")

// --- Résumé | Abstract ---
#set page(header: none, numbering: none)
#outlinebox(
  title: "Résumé",
  color: none,
  width: auto,
  radius: 2pt,
  centering: false
)[
  #resume
  #line(length: 100%)
  _*Mots clés --*_ #motscles
]

#outlinebox(
  title: "Abstract",
  color: none,
  width: auto,
  radius: 2pt,
  centering: false
)[
  #abstract
  #line(length: 100%)
  _*Keywords  --*_ #keywords
]
