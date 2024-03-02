/* ------------------------------- NE PAS MODIFIER ------------------------------ */
#import "../common/metadata.typ": title, chap1
#set page(header: smallcaps(title) + h(1fr) + emph(chap1) + line(length: 100%)) 
#text(white)[= #chap1 <chp:chap1>]#v(-1cm)
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

/* --- FIGURE ---
#figure(
  image("images/typst.svg", width: 40%),
  caption: "Typst logo",
) <fig:typst-logo>

@fig:typst-logo affiche le logo de `Typst`.
*/

/* --- TABLE ---
#figure(
  table(
    columns: (auto, auto, auto),
    [a], [b], [c], [$a$], [$b$], [$c$],
  ),
  caption: "Une table",
) <tab:une-table>

@tab:une-table montre un tableau.
*/

== Conclusion
#lorem(32)
