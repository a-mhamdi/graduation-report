// CAPSTONE PROJECT
#import "Class.typ": *

#import "Title-page.typ": *

#set document(author: author, title: title, keywords: keywords, date: auto)

// The project function is called with the content of the document.
#show: report.with(
  title: title,
  titre: titre,
  diploma: diploma,
  program: program,
  supervisor: supervisor,
  author: author,
  date: date,
  bibFile: "Biblio.bib",
  isAbstract: true,
)

#titlepage(
  title: title,
  titre: titre,
  diploma: diploma,
  program: program,
  supervisor: supervisor,
  author: author,
  date: date
)

#pagebreak()
#place(bottom + right, box(width: 256pt, text(emph(dedication))))

#set page(header: none)
#chap("Acknowledgements", notAck: false)
#pagebreak()
#ack

/* ### Capstone Project Report ### */

// TOC
#set page(numbering: "i")
#counter(page).update(1)
#{
  show heading: none
  heading(outlined: false, bookmarked: true)[Contents]
}
#outline(depth: 3, indent: auto)

// LOF
#pagebreak()
#{
  show heading: none
  heading(outlined: false, bookmarked: true)[List of Figures]
}
#outline(
  title: [List of Figures],
  target: figure.where(kind: image),
)

// LOT
#pagebreak()
#{
  show heading: none
  heading(outlined: false, bookmarked: true)[List of Tables]
}
#outline(
  title: [List of Tables],
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
