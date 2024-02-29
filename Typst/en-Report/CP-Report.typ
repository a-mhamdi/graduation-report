#import "Class.typ": *

#import "common/metadata.typ": *
#import "common/titlepage.typ": *

#set document(author: author, title: title, keywords: "report, capstone, project, programming", date: auto)

// The project function is called with the content of the document.
#show: report.with(
  title: title,
  titre: titre,
  diploma: diploma,
  program: program,
  supervisor: supervisor,
  author: author,
  date: date,
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

#set heading(numbering: none)
#chap("Acknowledgements")
#ack

#set page(numbering: "1")
#counter(page).update(1)
#chap("General Introduction") // GI
#include "chaps/intro.typ"
#set heading(numbering: "1.", supplement: [Chapter])
#chap(chap1) // Chapter 1
#include "chaps/chpt1.typ"
#chap(chap2) // Chapter 2
#include "chaps/chpt2.typ"
#chap(chap3) // Chapter 3
#include "chaps/chpt3.typ"
#set heading(numbering: none)
#chap("General Conclusion") // GC
#include "chaps/outro.typ"

// --- References ---
//Full documentation on the usage of Markdown text was noted by @Mailund2019. // This is test! Remove this line, please.
#chap("Bibliography")
#set page(header: smallcaps(title) + h(1fr) + emph("Bibliography") + line(length: 100%))
#text(white)[#heading(bookmarked: true)[Bibliography]]#v(-1cm)
#bibliography("Biblio.bib", title: none, full: true, style: "ieee")
