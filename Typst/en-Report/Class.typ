// DOCUMENT CLASS
#import "@preview/colorful-boxes:1.2.0": outlinebox
#import "common/metadata.typ": *

// --- Titles of Chapters --- 
#let chap(myRef, notAck: true, numbering: none) = {
  v(8cm)
  place(
    center, 
    rect(
      width: 15cm, 
      height: 6cm,
      radius: (rest: 5pt)
    )[
    #v(2.5cm)
    #text(1.5em, smallcaps(heading(outlined: notAck, numbering: numbering, myRef)))
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

  // --- Body font family ---
  set text(
    font: "EB Garamond",
    size: 12pt, 
    lang: "en"
  )

  show math.equation: set text(weight: 400)
  
  // --- Headings ---
  show heading: set block(below: 0.85em, above: 1.75em)

  show heading: it => {
    if (it.level <= 3) and (it.level > 1){
          block(counter(heading).display() + " " + it.body)
    } else {
          block(it.body)
    }
  }
  
  // --- Paragraphs ---
  show par: set block(spacing: 1.5em)
  set par(leading: 1em, justify: true)

  // --- Figures ---
  show figure: set text(size: 12pt)
  set figure(numbering: "1")
  show figure: set figure.caption(separator: [: ])
  show figure.where(kind: image): set figure(supplement: "Fig.")
  show figure.where(kind: table): set figure(supplement: "Tab.")
  show figure.where(kind: table): set figure.caption(position: top)
  
  // --- Maths ---
  show math.equation: set text(font: "Cambria Math", size: 12pt)
  set math.equation(numbering: "(1)")

  show ref: it => {
    let el = it.element
    if el != none and el.func() == math.equation {
      link(el.location(), numbering(
        "Eq. (1)",
        counter(math.equation).at(el.location()).at(0)
      ))
    } else {
      it
    }
  }

  // --- Body --- 
  body

  // --- Bibliography ---
  if bibFile != none {
	set page(numbering: "1.")
	  figure(chap("Bibliography"), kind: "chapter", supplement: "Chapter") // Bibliography
	  set page(header: smallcaps(title) + h(1fr) + emph("Bibliography") + line(length: 100%), numbering: "1.")
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
