
#let report(
  title: "",
  diploma: "",
  program: "",
  supervisor: "",
  author: "",
  date: none,
  body,
) = { 

  // --- Set the document's geometric properties. ---
  set page(
    paper: "a4",
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: "1",
    number-align: center,
  )

  // --- Save heading and body font families in variables ---
  let body-font = "Garamond"
  let sans-font = "Garamond"

  // --- Body font family ---
  set text(
    font: body-font, 
    size: 12pt, 
    lang: "fr"
  )

  show math.equation: set text(weight: 400)
  
  // --- Headings ---
  show heading: set block(below: 0.85em, above: 1.75em)
  show heading: set text(font: body-font)
  set heading(numbering: "1.1")
 
 /*
  set page(header: locate(loc => {
  let elems = query(
    selector(heading).before(loc),
    loc,
  )

  if elems == () {
    align(right, capstone)
  } else {
    let body = elems.last().body
    capstone + h(1fr) + emph(body)
  }
}))
*/

  // --- Paragraphs ---
  show par: set block(spacing: 1.5em)
  set par(leading: 1em, justify: true)

  // --- Figures ---
  show figure: set text(size: 0.85em)
  show figure.where(
    kind: table
  ): set figure.caption(position: top)

  body
  
}
 
// --- Chapter Titles --- 
#let chap(ref) = {
  pagebreak()
  set page(header: none)
  v(7cm)
  place(
	center,  
	rect(height: 50pt,radius: (rest: 2pt))[
	  #text(3em, weight: 700, ref)
	  ]
  )
}
