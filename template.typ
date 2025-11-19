// adapted from: https://github.com/tzx/NNJR/blob/c74640445582138976de6c7a9c982ffb173363cc/template.typ

#let resume(body) = {
  set list(indent: 1em, spacing: 0.6em)
  show list: set text(size: 0.92em)
  show link: set text(fill: rgb("#000000"))
  // show link: underline
  // show link: set underline(offset: 3pt)

  set page(
    paper: "a4",
    margin: (x: 15mm, y: 20mm)
  )

  set text(
    size: 10pt,
    font: "Georgia",
  )

  set par(
    leading: 1.0em,
    justify: true,
)

  body
}

#let name_header(name) = {
  set text(
    size: 2.25em,
    font: "Helvetica"
  )

  upper(name)
}

#let title_header(title) = {
  set text(
    size: 1em,
    weight: "bold"
  )
  title
}

#let header(
  name: "name",
  title: "title",
  phone: "phone",
  email: "email",
  linkedin: "link",
  site: "link",
) = {
  set text(
    size: 0.95em
  )
  align(center,
    block[
      #name_header(name) \
      #title_header(title) \
      #phone #h(3pt) | #h(3pt)
      #link("mailto:" + email)[#email] #h(3pt) | #h(3pt)
      #link("https://" + linkedin)[#linkedin] #h(3pt) | #h(3pt)
      #link("https://" + site)[#site]
    ]
  )
  v(5pt)
}

#let resume_heading(txt) = {
  show heading: set text(size: 0.92em, weight: "regular")

  block[
    = #smallcaps(txt)
    #v(-4pt)
    #line(length: 100%, stroke: 1pt + black)
  ]
}

#let profile(body) = {
    pad(
      top: 0.5em, 
      bottom: 1em, 
      x: 2em, 
      align(center, body)
    )
}

#let exp_item(
  name,
  location: "Copenhagen",
  ..positions
) = {
    set block(above: 0.7em, below: 1em, spacing: 0.65em)
    set par(leading: 0.6em)
    pad(left: 1em, right: 0.5em, box[
      #grid(
        columns: (3fr, 1fr),
        align(left)[
          *#name* 
        ],
        align(right)[
         #text(fill: rgb("#555555"))[*#location*]
        ]
      )
      // TODO: whitespace when there are no items
      #block(..positions)
    ])
}

#let exp_position(
  role: "Worker",
  date: "June 1837 - May 1845",
  ..points
) = {
    pad(bottom: 0.5em, box[
      #grid(
        columns: (3fr, 1fr),
        align(left)[
          _#role _
        ],
        align(right)[
          #text(fill: rgb("#555555"))[#date]
        ]
      )
      #if points.pos().len() > 0 {
        list(..points)
      }
    ]
  )
}