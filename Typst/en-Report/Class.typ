
#import "@preview/colorful-boxes:1.2.0": outlinebox
#import "common/metadata.typ": *

// --- Chapter Titles --- 
#let chap(ref, ack: false) = {
  set page(header: none)
  v(8cm)
  if ack == false {
    text(white)[= #ref]
  }
  place(
	center,  
	rect(height: 50pt,radius: (rest: 2pt))[
	  #text(3em, weight: 700, ref)
	  ]
  )
}

#let report(
  title: "",
  titre: "",
  diploma: "",
  program: "",
  supervisor: "",
  author: "",
  date: none,
  bibFile: none,
  isAbstract: false,
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


  body

  // --- Bibliography ---
  if bibFile != none {
    chap("Bibliography")
    set page(header: smallcaps(title) + h(1fr) + emph("Bibliography") + line(length: 100%))
    //text(white)[#heading(bookmarked: true)[Bibliography]]
    v(-1cm)
    bibliography(bibFile, title: none, full: true, style: "ieee")
  }

  // --- Abstract | Résumé ---
  if isAbstract == true {
    set page(header: none, numbering: none)
    outlinebox(
      title: "Abstract",
      color: none,
      width: auto,
      radius: 2pt,
      centering: false
    )[
      #abstract
      #line(length: 100%)
      _*Keywords  --*_ #keywords
    ]

    outlinebox(
      title: "Résumé",
      color: none,
      width: auto,
      radius: 2pt,
      centering: false
    )[
      #resume
      #line(length: 100%)
      _*Mots clés --*_ #motscles
    ]
  }
}