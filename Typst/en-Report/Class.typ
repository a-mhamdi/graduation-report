// DOCUMENT CLASS
#import "@preview/colorful-boxes:1.2.0": outlinebox
#import "common/metadata.typ": *

// --- Chapter Titles --- 
#let chap(myRef, notAck: true, numbering: none) = {
  v(8cm)
  place(
    center, 
    rect(
      width: 15cm, 
      height: 3cm,
      radius: (rest: 2pt)
    )[
    #v(1cm)
    #text(2em, smallcaps(heading(outlined: notAck, numbering: numbering, myRef)))
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

  // --- Bibliography ---
  if bibFile != none {
  	set page(header: none)
    set heading(numbering: none)
  	figure(chap("Bibliography"), supplement: "Chapter") // Bibliography
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
