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

#set math.equation(numbering: "(1)" )

/* ### Capstone Project Report ### */

// TOC
#set page(numbering: "i")
#counter(page).update(1)
#outline(depth: 3, indent: auto)
// LOF
#pagebreak()
#outline(
  title: [List of Figures],
  target: figure.where(kind: image),
)
// LOT
#pagebreak()
#outline(
  title: [List of Tables],
  target: figure.where(kind: table),
)

#pagebreak()
#pagebreak()
#place(bottom + right, box(width: 256pt, text(emph(dedication))))

#set page(header: none)
#chap("Acknowledgements", notAck: false)
#pagebreak()
#ack


#set page(numbering: "1")
#counter(page).update(1)

// --- GI + Chaps + GC ---
#include "chaps/intro.typ"
#include "chaps/chpt1.typ"
#include "chaps/chpt2.typ"
#include "chaps/chpt3.typ"
#include "chaps/outro.typ"
// --- END OF DOCUMENT ---
