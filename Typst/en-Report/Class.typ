
#let report(
  title: "",
  titre: "",
  diploma: "",
  program: "",
  supervisor: "",
  author: "",
  date: none,
  //ch: none,
  body,
) = { 

  // --- Set the document's geometric properties. ---
  set page(
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
    lang: "en"
  )

  show math.equation: set text(weight: 400)
  
  // --- Headings ---
  show heading: set block(below: 0.85em, above: 1.75em)
  show heading: set text(font: body-font)
  set heading(numbering: "1.1")

  //let ch = false
  //if ch == false [ 
  set page(header: locate(loc => {
  let elems = query(
    selector(heading).before(loc),
    loc,
  )
  let capstone = smallcaps[
    #title
  ]
  if elems == () {
    align(right, capstone)
  } else {
    let body = elems.last().body
    capstone + h(1fr) + emph(body)
  }
}))
//]
//else [
//set page(header: none)
//]

  // --- Paragraphs ---
  set par(leading: 1em, justify: true, first-line-indent: 2em)

  // --- Figures ---
  show figure: set text(size: 0.85em)

  body

  pagebreak()
  
}

// --- Chapter Titles --- 
#let chap(ref) = {
  v(1fr)
  pagebreak()
  place(
    center,  
    rect(height: 50pt,radius: (rest: 2pt))[
      #text(3em, weight: 700, ref)
      ]
  )
  pagebreak()
  v(1fr)
}
