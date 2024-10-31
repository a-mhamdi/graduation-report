#let titlepage(
  title: "",
  titre: "",
  diploma: "",
  program: "",
  author: "",
  advisor: "",
  president: "",
  reviewer: "",
  guest: "",
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

  place(dx: 12.5mm, dy: -20mm, right, text(strong("Republic of Tunisia")))
  place(dx: 12.5mm, dy: -10mm, right, text(strong("Ministry of Higher Education and Scientific Research")))
  place(dx: 12.5mm, dy: 0mm, right, text(strong("General Directorate of Technological Studies")))
  place(dx: 12.5mm, dy: 10mm, right, text(strong("Institute of Technological Studies of Bizerte")))
  // place(dx: 12.5mm, dy: 10mm, right, text(strong("Department of Electrical Engineering")))
  
  place(dx: -12.5mm, dy: 30mm, center, box(width: 70%, text(1em, weight: 500, "Master's Thesis")))

  place(dx: -12.5mm, dy: 40mm, center, box(width: 70%, text(font: sans-font, 1em, weight: 600, smallcaps("Advanced Robotics and Artificial Intelligence"))))

  // place(dx: -12.5mm, dy: 55mm, center, box(width: 70%, text(1em, weight: 500, "Project's Title")))

  place(dx: -12.5mm, dy: 63mm, center, box(width: 70%, text(font: sans-font, 2em, weight: 700, line(stroke: 2pt, length: 100%) + smallcaps(title) + line(stroke: 2pt, length: 100%))))

  place(dx: -12.5mm, dy: 115mm, center, align(center, image("HOST.png", height: 3cm)))
 
  place(dx: -12.5mm, dy: 140mm, center, box(width: 70%, text(1em, 
  pad(
    top: 2em,
    right: 15%,
    left: 0%,
    grid(
      columns: 1,
      align: (center),
      gutter: 2em,
      "Prepared by: ", smallcaps(author),
    )
  )
  )))

  place(dx: -12.5mm, dy: 180mm, center, text("Presented on " + date + " in Bizerte before the review committee listed below:") +
  pad(
    top: 1em,
    right: 15%,
    left: 0%,
    grid(
      columns: 2,
      align: (right, left),
      gutter: 2em,
      "President: ", smallcaps(president),
      "Reviewer: ", smallcaps(reviewer),
      "Advisor: ", smallcaps(advisor),
      "Co-advisor: ", smallcaps(guest),
    )
  )
  )

  pagebreak()

  set page(background: none)

}
