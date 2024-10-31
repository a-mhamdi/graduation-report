// Rapport de fin d'études

#import "common/class.typ": *
#import "common/title-page.typ": *

#set document(author: author, title: title, keywords: motscles, date: auto)

// The project function is called with the content of the document.
#show: report.with(
  title: title,
  titre: titre,
  diploma: diploma,
  program: program,
  author: author,
  encadrant: encadrant,
  president: president,
  rapporteur: rapporteur,
  industriel: industriel,
  date: date,
  bibFile: "Biblio.bib",
  isAbstract: true,
)

#titlepage(
  title: title,
  titre: titre,
  diploma: diploma,
  program: program,
  author: author,
  encadrant: encadrant,
  president: president,
  rapporteur: rapporteur,
  industriel: industriel,
  date: date
)

#pagebreak()
#place(bottom + right, box(width: 256pt, text(emph(dedication))))

#set page(header: none)
#chap("Remerciements", notAck: false)
#pagebreak()
#ack

/* ### Raport du PFE ### */

// TOC
#set page(numbering: "i")
#counter(page).update(1)
#{
  show heading: none
  heading(outlined: false, bookmarked: true)[Table des matières]
}
#outline(depth: 3, indent: auto)

// LOF
#pagebreak()
#{
  show heading: none
  heading(outlined: false, bookmarked: true)[Liste des figures]
}
#outline(
  title: [Liste des figures],
  target: figure.where(kind: image),
)

// LOT
#pagebreak()
#{
  show heading: none
  heading(outlined: false, bookmarked: true)[Liste des tableaux]
}
#outline(
  title: [Liste des tableaux],
  target: figure.where(kind: table),
)

#set page(numbering: "1")
#counter(page).update(1)

// --- GI + Chaps + GC ---
#include "chaps/intro.typ"
#include "chaps/chpt1.typ"
#include "chaps/chpt2.typ"
#include "chaps/chpt3.typ"
#include "chaps/outro.typ"
// --- END OF DOCUMENT ---
