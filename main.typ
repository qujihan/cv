#import "cv/cv.typ":*

#show:cv.with()

#info-block(info: (
  name: "渠 继 涵",
  phone: "15562233665",
  email: link("qujihan@163.com", "qujihan@163.com"),
  wechat: "iQuhaha",
  github: link("github.com/qujihan", "github.com/qujihan"),
))
// 教育经历
#section-title("/cv/icons/mortarboard.svg", strong("教育经历"))
#muti-column-one-line("电子科技大学", "计算机学院 / 计算机技术", "硕士", "2022.09 ~ 2025.06")
#muti-column-one-line("青岛理工大小", "理学院 / 信息与计算科学", "本科", "2016.09 ~ 2020.06")

// 实习经历
#section-title("/cv/icons/project.svg", strong("实习经历"))
#muti-column-one-line("可扩展低成本日志存储引擎", "华为云创新Lab / Opengemini", "2023.07 ~ 2023.12")
#line(length: 100%, stroke: (paint: black, dash: ("dot", 5pt, 5pt, 5pt)))
#muti-column-one-line("可扩展低成本日志存储引擎", "华为云 / DWS ", "2023.12 ~ 2024.05")
#line(length: 100%, stroke: (paint: black, dash: ("dot", 5pt, 5pt, 5pt)))
#muti-column-one-line("可扩展低成本日志存储引擎", "小红书 / 基础存储 / RedStore", "2024.06 ~ 2023.09")
#line(length: 100%, stroke: (paint: black, dash: ("dot", 5pt, 5pt, 5pt)))
#muti-column-one-line("可扩展低成本日志存储引擎", "字节跳动 / Data / TLS", "2024.12 ~ 2025.04")

// 项目经历
#section-title("/cv/icons/telescope.svg", strong("项目经历"))
#muti-column-one-line("可扩展低成本日志存储引擎", "华为创新Lab / Opengemini", "2023.07-2023.12")
#line(length: 100%, stroke: (paint: black, dash: ("dot", 5pt, 5pt, 5pt)))
#muti-column-one-line("可扩展低成本日志存储引擎", "华为创新Lab / Opengemini", "2023.07-2023.12")

// 自我总结
#section-title("/cv/icons/note.svg", strong("自我总结"))
- 熟悉Linux以及各类工具：VSCode、Git、CMake、Docker、K8s等.
- 有着较强的自学能力，对C++ / Rust / Golang / Python等语言都有一定的了解.
- 具有较强的沟通能力、理解能力以及团队协作能力. 主动与团队成员进行沟通，解决问题.
