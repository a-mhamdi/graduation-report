#let titlepage(
  title: "",
  titre: "",
  diploma: "",
  program: "",
  author: "",
  encadrant: "",
  president: "",
  rapporteur: "",
  industriel: "",
  date: none,
) = {
 
  set page(
  	header: none,
    margin: (left: 30mm, right: 20mm, top: 40mm, bottom: 40mm),
    numbering: none,
    number-align: center,
  )

  let body-font = "Charter"
  let sans-font = "Charter"

  set text(
    font: body-font, 
    size: 12pt, 
    lang: "en"
  )

  set par(leading: 1em)

  
  // --- Title Page ---

  set page(background: image("Cover Page.svg", width: 100%, height: 100%))

  place(dx: 12.5mm, dy: -17mm, right, text(strong("République Tunisienne")))
  place(dx: 12.5mm, dy: -8mm, right, text(strong("Ministère de l'Enseignement Supérieur et de la Recherche Scientifique")))
  place(dx: 12.5mm, dy: 1mm, right, text(strong("Direction Générale des Études Technologiques")))
  place(dx: 12.5mm, dy: 10mm, right, text(strong("Institut Supérieur des Études Technologiques de Bizerte")))
  
  place(dx: -12.5mm, dy: 30mm, center, box(width: 70%, text(1em, weight: 500, "Mémoire de Master Professionnel")))
  place(dx: -12.5mm, dy: 40mm, center, box(width: 70%, text(font: sans-font, 1em, weight: 600, smallcaps("Robotique Avancée et Intelligence Artificielle"))))

  place(dx: -12.5mm, dy: 63mm, center, box(width: 70%, text(font: sans-font, 2em, weight: 700, line(stroke: 2pt, length: 100%) + smallcaps(title) + line(stroke: 2pt, length: 100%))))

  place(dx: -12.5mm, dy: 115mm, center, align(center, image("HOST.png", height: 3cm)))
 
  place(dx: -12.5mm, dy: 145mm, center, box(width: 70%, text(1em, 
  pad(
    top: 2em,
    right: 15%,
    left: 0%,
    grid(
      columns: 1,
      align: (center),
      gutter: 2em,
      "Préparé by: ", smallcaps(author),
    )
  )
  )))

  place(dx: -12.5mm, dy: 180mm, center, text("Présenté le " + date + " à Bizerte devant le jury d'examen :") +
  pad(
    top: 1em,
    right: 15%,
    left: 0%,
    grid(
      columns: 2,
      align: (right, left),
      gutter: 2em,
      "Président: ", smallcaps(president),
      "Rapporteur: ", smallcaps(rapporteur),
      "Encadrant ISET: ", smallcaps(encadrant),
      "Encadrant industriel: ", smallcaps(industriel),
    )
  )
  )

  pagebreak()

  set page(background: none)

}
