#let titlepage(
  title: "",
  titre: "",
  diploma: "",
  program: "",
  supervisor: "",
  author: "",
  date: none,
) = {
 
  set page(
  	header: none,
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: none,
    number-align: center,
  )

  let body-font = "Garamond"
  let sans-font = "Garamond"

  set text(
    font: body-font, 
    size: 12pt, 
    lang: "en"
  )

  set par(leading: 1em)

  
  // --- Title Page ---

  v(15mm)
  align(center, text(font: sans-font, 1em, weight: 100, "Ministère de l'Enseignement Supérieur et de la Recherche Scientifique, Tunisie"))

  v(10mm)
  align(center, text(font: sans-font, 1em, weight: 100, "Institut Supérieur des Etudes Technologiques de Bizerte"))

  v(5mm)
  align(center, image("Logo-ISETBZ.png", width: 25%))
  v(15mm)

  align(center, text(font: sans-font, 1.3em, weight: 100, diploma + " in " + program))
  
  v(8mm)
  align(center, text(font: sans-font, 2em, weight: 700, title))

  pad(
    top: 3em,
    right: 15%,
    left: 15%,
    grid(
      columns: 2,
      gutter: 1em,
      strong("Etudiant(e)(s) : "), author,
      strong("Encadrant(e) : "), supervisor,
      strong("Date: "), date,
    )
  )

  pagebreak()

}
