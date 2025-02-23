#import "/src/lib.typ" as etikett

#let test-label(n) = [
  #set align(center+horizon)
  #set text(20pt)
  #n
]

#etikett.labels(
  sheet: etikett.sheet(
    paper: (width: 300pt, height: 400pt),
    margins: 10pt,
    gutters: 20pt,
    rows: 4,
    columns: 3,
  ),
  inset: 5pt,
  debug: true,

  ..range(4).map(test-label),
)
