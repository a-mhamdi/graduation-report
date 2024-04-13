/* --------------------------------- DO NOT EDIT -------------------------------- */
#import "../Class.typ": *
#show: report.with(isAbstract: false)
#set page(header: none)
#figure(chap(chap1, numbering: "1."), kind: "chapter", supplement: "Chapitre") <chp:chap1> // Chapter 1
#set page(header: smallcaps(title) + h(1fr) + emph(chap1) + line(length: 100%))
#set heading(level: 2, outlined: true, numbering: "1.") 
/* ------------------------------------------------------------------------------ */ 

#heading(level: 2, numbering: none)[Introduction]
#lorem(32)

== Section 1
#lorem(16)
=== Sous-section 1.1
#lorem(64)
=== Sous-section 1.2
#lorem(64)

== Section 2
#lorem(16)
=== Sous-section 2.1
#lorem(64)
=== Sous-section 2.2
#lorem(64)

#heading(level: 2, numbering: none)[Conclusion]
#lorem(32)
