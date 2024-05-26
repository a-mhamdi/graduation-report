/* --------------------------------- DO NOT EDIT -------------------------------- */
#import "../Class.typ": *
#show: report.with(isAbstract: false)
#set page(header: none)
#figure(chap(chap3, numbering: "1."), kind: "chapter", supplement: "Chapitre") <chp:chap3> // Chapter 3
#set page(header: smallcaps(title) + h(1fr) + emph(chap3) + line(length: 100%))
#set heading(outlined: true, numbering: "1.") 
/* ------------------------------------------------------------------------------ */ 

== Introduction
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

/* --- FIGURE --- */
#figure(
  image("images/typst.svg", width: 10%),
  caption: "Logo de Typst",
) <fig:typst-logo>

@fig:typst-logo affiche le logo de `Typst`.

/* --- TABLE --- */
#figure(
  table(
    columns: (auto, auto, auto),
    [a], [b], [c], [$a$], [$b$], [$c$],
  ),
  caption: "Une table",
) <tab:une-table>

@tab:une-table montre un tableau.

== Conclusion
#lorem(32)
