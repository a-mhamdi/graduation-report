/* --------------------------------- DO NOT EDIT -------------------------------- */
#import "../common/class.typ": *
#show: report.with(isAbstract: false)
#set page(header: none)
#figure(chap(chap3, numbering: "1."), kind: "chapter", supplement: "Chapitre") <chp:chap3> // Chapter 3
#set page(header: h(1fr) + emph(chap3) + line(length: 100%))
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
@fig:typst-logo affiche le logo de `Typst`.

#figure(
  image("images/typst.svg", width: 10%),
  caption: "Logo de Typst",
) <fig:typst-logo>

/* --- TABLE --- */
@tab:un-tableau montre un tableau.

#figure(
  table(
    columns: (auto, auto, auto),
    [a], [b], [c], [$a$], [$b$], [$c$],
  ),
  caption: "Un tableau",
) <tab:un-tableau>

/* --- MATH --- */
@eq:somme montre la somme des premiers $n$ nombres naturels.

$ sum_(k=0)^n k
    &= 1 + ... + n \
    &= (n(n+1)) / 2 $ <eq:somme>

== Conclusion
#lorem(32)
