/* --------------------------------- DO NOT EDIT -------------------------------- */
#import "../common/metadata.typ": title, chap1
#set page(header: smallcaps(title) + h(1fr) + emph(chap1) + line(length: 100%)) 
#text(white)[= #chap1 <chp:chap1>]#v(-1cm)
/* ------------------------------------------------------------------------------ */ 

== Introduction
#lorem(32)

== Section 1
#lorem(16)
=== Subsection 1.1
#lorem(64)
=== Subsection 1.2
#lorem(64)

== Section 2
#lorem(16)
=== Subsection 2.1
#lorem(64)
=== Subsection 2.2
#lorem(64)

#figure(
  image("images/typst.svg", width: 40%),
  caption: "Typst logo",
) <fig:typst-logo>

@fig:typst-logo shows the `Typst` logo.

#figure(
  table(
    columns: (auto, auto, auto),
    [a], [b], [c], [$a$], [$b$], [$c$],
  ),
  caption: "Some table",
) <tab:some-table>

@tab:some-table displays some table.

== Conclusion
#lorem(32)
