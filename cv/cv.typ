#let debug-color = red
#let debug-color = none

#let cv(body) = {
  set text(font: ("Lora", (name: "Noto Serif CJK SC", covers: "latin-in-cjk")), size: 12pt)
  set page(paper: "a4", header: none, footer: none, margin: 2em)
  body
}

#let icon-with-string(icon-path, body) = {
  grid(
    columns: 2,
    rows: 1em,
    gutter: 0.2em,
    // avoid formatting
    box(stroke: debug-color, height: 100%)[
      #set align(center + horizon)
      #image(icon-path)
    ],
    box(stroke: debug-color, height: 100%)[
      #set align(center + horizon)
      #body
    ],
  )
}

#let muti-column-one-line(..args) = {
  let objs = args.pos()
  let n = objs.len()
  box(stroke: debug-color, width: 100%)[
    #set align(horizon)
    #grid(
      columns: (1fr,) * n,
      rows: 1em,
      gutter: 0em,
      // avoid formatting
      ..objs.enumerate(start: 0).map(str => {
        let index = str.at(0)
        let body = str.at(1)
        box(stroke: debug-color, width: 100%)[
          #let body-alignment = center
          #if index == 0 {
            body-alignment = left
          } else if index == n - 1 {
            body-alignment = right
          }
          #set align(body-alignment + horizon)
          #text(body)
        ]
      }),
    )
  ]
}

#let info-block(info: (:)) = {
  let name = info.at("name", default: "")
  let phone = info.at("phone", default: "")
  let email = info.at("email", default: "")
  let wechat = info.at("wechat", default: "")
  let github = info.at("github", default: "")
  assert(name != "", message: "info 中缺少 name 字段")

  set par(leading: 0pt, spacing: 0.5em)
  block(width: 100%)[
    #set align(center)
    #text(size: 25pt)[*#name*]

    #grid(columns: 2, rows: 1em, gutter: 1em, if github != "" {
      box(icon-with-string("/cv/icons/github.svg", github))
    }, if email != "" {
      box(icon-with-string("/cv/icons/email.svg", email))
    })

    #grid(
      columns: 2,
      rows: 1em,
      gutter: 1em,
      //
      if wechat != "" {
        box(icon-with-string("/cv/icons/wechat.svg", wechat))
      },
      if phone != "" {
        box(icon-with-string("/cv/icons/phone.svg", phone))
      },
    )
  ]
}

#let section-title(icon-path, title) = {
  v(1.5em)
  set text(size: 1.4em)
  set par(spacing: 0.2em)
  icon-with-string(icon-path, title)
  line(length: 100%, stroke: (paint: black, thickness: 1pt))
}