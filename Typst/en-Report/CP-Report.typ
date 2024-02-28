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
  //ch: false
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

// #set heading(numbering: "1.1")
#set math.equation(numbering: "(1)" )

/* ### Capstone Project Report ### */

// TOC
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

//#let ch = true

#pagebreak()
#pagebreak()

#set heading(numbering: none)
#chap("Acknowledgements")
#ack

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
Full documentation on the usage of Markdown text was noted by @Mailund2019. // This is test! Remove this line, please.
#chap("Bibliography")
#bibliography("Biblio.bib", style: "ieee")