// HOW TO WRITE IN TYPST

#import "@preview/showybox:2.0.1": showybox
#import "@preview/colorful-boxes:1.2.0": stickybox

#let title = "Learn To Write In Typst"
#let author = "A. Mhamdi"
#let theDate = auto

#set document(title: title, author: author, keywords: "Typst, How-to", date: theDate)

#showybox(
  frame: (
    border-color: blue.darken(50%),
    title-color: blue.lighten(60%),
    body-color: blue.lighten(80%)
  ),
  title-style: (
    color: black,
    weight: "bold",
    align: center
  ),
  shadow: (
    offset: 3pt,
  ),
  title: title,
  align(center, "Prepared by A. Mhamdi")
)

Typst supports Markdown syntax, which provides a range of formatting options. Here are some points to help you write your report:

+	Formatting Text:
	-	Surround a text with single asterisks '(\*)' to make it bold
	-	Use single underscores '(\_)' around your text to emphasize it
	-	To create headings, use equal signs '(=)' followed by a space at the begining of a line. The number of '(=)' symbols determines the heading level.
+	Creating lists:
	-	Unordered list: use a hyphen '(-)' followed by a space for each list item
	-	Ordered list: use a plus sign '(+)' followed by a space for each list item
+	Code snippets:
	-	Inline code: enclose the code within backticks (\`)
	-	Block of code: use triple backticks followed by the language you are using to enable syntax highlighting
	#raw("```python
    import numpy as np 
    from matplotlib import pyplot as plt

    plt.plot(np.sin(np.linspace(0, 2 * np.pi)))
    plt.show()
```")
+	Inserting Objects:
	-	Use this syntax if you need to insert an image:
	```typ
	#figure(
		image("IMAGE_NAME.EXT", width: 100%),
		caption: [IMAGE_CAPTION],
	) <fig:LABEL>

	@fig:LABEL shows an image.
	```
	-	Use this syntax if you need to draw a table:
	```typ
	#figure(
		table(
			columns: 4,
			[Row 1], [a], [b], [c],
			[Row 2], [1], [2], [3],
  	),
  	caption: [Results],
	) <tab:LABEL>

	@tab:LABEL displays some results.
	```

#v(-5.15cm)
#place(
    right,
    stickybox(
        rotation: 64deg,
        width: 10.75cm,
    )[
        The folder `en-Report` is always the newest updated version.
    ]
)
