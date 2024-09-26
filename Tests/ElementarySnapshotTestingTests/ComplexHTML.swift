import Elementary

// Example from https://github.com/pointfreeco/swift-html/blob/main/Tests/HtmlSnapshotTestingTests/__Snapshots__/HtmlSnapshotTestingTests/testComplexHtml.1.html
struct ComplexHTML: HTML {
  var content: some HTML {
    HTMLRaw("<!DOCTYPE html>")
    html(.lang("en")) {
      head {
        meta(.charset("utf-8"))
        title { "Subscribe to Point-Free" }
        style {
          HTMLRaw("html{line-height:1.15;-webkit-text-size-adjust:100%}")
        }
        meta(.name("viewport"), .content("width=device-width,initial-scale=1.0"))
        link(
          .href("https://www.pointfree.co/feed/episodes.xml"),
          .rel("alternate"),
          .init(name: "type", value: "application/atom/xml")
        )
        link(
          .href("https://d3rccdn33rt8ze.cloudfront.net/favicons/apple-touch-icon.png"),
          .rel("apple-touch-icon"),
          .init(name: "sizes", value: "180x180")
        )
        link(
          .href("https://d3rccdn33rt8ze.cloudfront.net/favicons/favicon-32x32.png"),
          .rel("icon"),
          .init(name: "sizes", value: "32x32"),
          .init(name: "type", value: "image/png")
        )
        link(
          .href("https://d3rccdn33rt8ze.cloudfront.net/favicons/favicon-16x16.png"),
          .rel("icon"),
          .init(name: "sizes", value: "16x16"),
          .init(name: "type", value: "image/png")
        )
        link(
          .href("https://d3rccdn33rt8ze.cloudfront.net/favicons/site.webmanifest"),
          .rel("manifest")
        )
        link(
          .href("https://d3rccdn33rt8ze.cloudfront.net/favicons/safari-pinned-tab.svg"),
          .rel("mask-icon")
        )
        meta(
          .name(.description),
          .content(
            "Subscribe to an individual or team membership on Point-Free, a video series exploring Swift and Functional Programming"
          )
        )
        script(.async, .src("https://www.google-analytics.com/analytics.js")) {}
      }
      body {
        Header()
        Main()
        Footer()
      }
    }
  }

  struct Header: HTML {
    var content: some HTML {
      header(.class("bg-purple150 d-pt4 d-pb4 m-pl2 m-pr2 m-pt2 m-pb2")) {
        nav {
          div(.class("col-m")) {
            a(.init(name: "href", value: "/")) {
              img(
                .init(name: "src", value: "data:image/svg+xml;base64,ZnVuY3Rpb25z"),
                .init(name: "alt", value: ""),
                .class("hide-d")
              )
            }
          }
          div(.class("col-m")) {
            div(.class("center-m")) {
              div(.class("hide-m")) {
                a(.init(name: "href", value: "/")) {
                  img(
                    .init(name: "src", value: "data:image/svg+xml;base64,ZnVuY3Rpb25z"),
                    .init(name: "alt", value: ""),
                    .class("hide-m")
                  )
                }
              }
            }
          }
          div(.class("col-m")) {

            ul(.class("list-reset end-m")) {

              li(.class("m-pl3 inline")) {

                a(.init(name: "href", value: "/blog")) {
                  "Blog"
                }

              }

              li(.class("m-pl3 inline")) {

                a(.init(name: "href", value: "/pricing")) {
                  "Subscribe"
                }

              }

              li(.class("m-pl3 inline")) {

                a(.init(name: "href", value: "/account")) {
                  "Account"
                }

              }

            }

          }

        }

      }
    }
  }

  struct Main: HTML {
    var content: some HTML {
      main(.class("bg-purple150 center-m d-pl0 d-pr0 d-pt4 d-pb4 m-pl2 m-pr2 m-pt3 m-pb3 row")) {

        div(.class("col-m col-d-7 col-m-12")) {

          div {

            h2(.class("fg-white fg-black bold ts-d-r3 ts-m-r2 lh-2")) {
              "Subscribe to Point-Free"
            }

            p(.class("fg-green")) {
              "Become a subscriber to unlock every full episode and explore new functional programming concepts as episodes are released."
            }

            div(.class("m-pb3 m-mt4 row")) {

              div(.class("col-m col-m-12")) {

                form(
                  .init(name: "action", value: "/subscribe"),
                  .id("card-form"),
                  .init(name: "method", value: "post"),
                  .init(name: "onsubmit", value: "event.preventDefault()")
                ) {

                  input(
                    .checked,
                    .class("none"),
                    .id("tab0"),
                    .init(name: "name", value: "pricing[lane]"),
                    .init(name: "type", value: "radio"),
                    .init(name: "value", value: "individual"),
                    .init(name: "role", value: "button")
                  )

                  label(
                    .init(name: "for", value: "tab0"),
                    .class(
                      "fit fg-black bold ts-d-r1_25 ts-m-r1 lh-1 medium m-pl2 m-pr2 m-pt2 m-pb2 border-none inline-block rounded cursor-pointer bg-purple fg-white"
                    ),
                    .init(
                      name: "style",
                      value:
                        "-webkit-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1); -moz-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1); -ms-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1); -o-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1); box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1); width:35%"
                    )
                  ) {
                    "For you"
                  }

                  span(.class("m-pl2 m-pr2 fg-gray850")) {
                    "or"
                  }

                  label(
                    .init(name: "for", value: "tab1"),
                    .class(
                      "fit fg-black bold ts-d-r1_25 ts-m-r1 lh-1 medium m-pl2 m-pr2 m-pt2 m-pb2 border-none inline-block rounded cursor-pointer bg-purple fg-white"
                    ),
                    .init(
                      name: "style",
                      value:
                        "-webkit-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1); -moz-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1); -ms-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1); -o-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1); box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1); width:35%"
                    )
                  ) {
                    "For your team"
                  }

                  div(.class("m-mb3")) {

                  }

                  div(.class("flex")) {

                    div(.class("content1 bg-white w-100p row")) {

                      div(.class("col-m col-m-12")) {

                        div(.class("m-pl3 m-pr3 m-pt3")) {

                          p(.class("fg-black fg-black normal h5 lh-4")) {
                            "How many in your team?"
                          }

                          input(
                            .class(
                              "num-spinner center fg-black bold ts-d-r4 ts-m-r3 lh-2 fg-black"
                            ),
                            .init(name: "max", value: "100"),
                            .init(name: "min", value: "2"),
                            .init(name: "name", value: "pricing[quantity]"),
                            .init(name: "onblur", value: "/* */"),
                            .init(name: "oninput", value: "/* */"),
                            .init(name: "step", value: "1"),
                            .init(name: "type", value: "number"),
                            .init(name: "value", value: "2")
                          )

                          hr(.class("pf-divider border-top m-ml0 m-mr0 m-mt0 m-mb0 bg-white m-mt3"))

                        }

                      }

                    }

                  }

                  div(.class("bg-white row")) {

                    div(.class("bg-white col-m col-m-6")) {

                      label(
                        .init(name: "for", value: "monthly"),
                        .class("block m-ml3 m-mr3 m-mt3 m-mb3")
                      ) {

                        div(
                          .init(name: "style", value: "flex-direction:column-reverse"),
                          .class("row")
                        ) {

                          input(
                            .checked,
                            .id("monthly"),
                            .init(name: "name", value: "pricing[billing]"),
                            .init(name: "type", value: "radio"),
                            .init(name: "value", value: "monthly")
                          )

                          div(.class("col-m col-m-12")) {

                            h2(.class("fg-black bold ts-d-r3 ts-m-r2 lh-2 light fg-gray650")) {

                              span(.class("content0")) {
                                "$17/mo"
                              }

                              span(.class("content1")) {
                                "$"
                                span(.class("team-price"), .init(name: "data-price", value: "16")) {
                                  "32"
                                }
                                "/mo"
                              }

                            }

                          }

                          div(.class("col-m col-m-12")) {

                            h6(
                              .class(
                                "fg-black bold ts-d-r0_875 ts-m-r0_75 lh-1 caps fg-gray650 inline"
                              )
                            ) {
                              "Monthly Plan"
                            }

                          }

                        }

                      }

                    }

                    div(.class("bg-white col-m col-m-6")) {

                      label(
                        .init(name: "for", value: "yearly"),
                        .class("block m-ml3 m-mr3 m-mt3 m-mb3")
                      ) {

                        div(
                          .init(name: "style", value: "flex-direction:column-reverse"),
                          .class("row")
                        ) {

                          input(
                            .checked,
                            .id("yearly"),
                            .init(name: "name", value: "pricing[billing]"),
                            .init(name: "type", value: "radio"),
                            .init(name: "value", value: "yearly")
                          )

                          div(.class("col-m col-m-12")) {

                            h2(.class("fg-black bold ts-d-r3 ts-m-r2 lh-2 light fg-gray650")) {

                              span(.class("content0")) {
                                "$170/yr"
                              }

                              span(.class("content1")) {
                                "$"
                                span(.class("team-price"), .init(name: "data-price", value: "160"))
                                {
                                  "320"
                                }
                                "/yr"
                              }

                            }

                          }

                          div(.class("col-m col-m-12")) {

                            h6(
                              .class(
                                "fg-black bold ts-d-r0_875 ts-m-r0_75 lh-1 caps fg-gray650 inline"
                              )
                            ) {
                              "Yearly Plan"
                            }

                          }

                        }

                      }

                    }

                    div(.class("bg-white col-m col-m-12")) {

                      p(
                        .class(
                          "content1 m-pb1 fg-gray400 fg-black normal h6 lh-4 w-100p center normal"
                        )
                      ) {
                        "20% off the Individual Monthly plan"
                      }

                    }

                  }

                  div(.class("bg-white row")) {

                    div(.class("col-m col-m-12")) {

                      div(.class("m-pb3 m-pt2")) {

                        div(.class("m-pl3 m-pr3")) {

                          input(
                            .init(name: "name", value: "token"),
                            .init(name: "type", value: "hidden")
                          )

                          button(
                            .class(
                              "medium cursor-pointer nowrap btn-normal rounded border-none text-decoration-none pf-link-white fg-white bg-purple h5 m-pl2 m-pr2 m-mt3"
                            )
                          ) {
                            "Subscribe to Point-Free"
                          }

                        }

                      }

                    }

                  }

                }

              }

            }

          }

        }

      }
    }
  }

  struct Footer: HTML {
    var content: some HTML {
      footer(.class("row d-pl4 d-pr4 d-pt4 d-pb4 m-pl3 m-pr3 m-pt3 m-pb3 bg-black")) {
        div(.class("col-m col-d-6 col-m-12")) {
          div(.class("d-pr4 m-pb2")) {
            h4(.class("fg-black bold ts-d-r1_5 ts-m-r1_25 lh-2 m-mb0")) {
              a(.init(name: "href", value: "/"), .class("pf-link-white")) {
                "Point-Free"
              }
            }
            p(.class("fg-black normal h5 lh-4 fg-white")) {
              "A video series on functional programming and the Swift programming language. Hosted by"
              a(
                .class("text-decoration-none pf-link-green"),
                .init(name: "href", value: "https://twitter.com/mbrandonw")
              ) {
                "Brandon Williams"
              }
              " and"
              a(
                .class("text-decoration-none pf-link-green"),
                .init(name: "href", value: "https://twitter.com/stephencelis")
              ) {
                "Stephen Celis"
              }
              "."
            }
          }
        }
        div(.class("col-m col-d-2 col-m-4")) {
          div {
            h5(.class("fg-black bold ts-d-r0_875 ts-m-r0_75 lh-1 caps fg-white")) {
              "Content"
              ol(.class("list-reset")) {

                li {

                  a(
                    .init(name: "href", value: "/"),
                    .class("pf-link-purple fg-black normal h5 lh-4")
                  ) {
                    "Videos"
                  }

                }

                li {

                  a(
                    .init(name: "href", value: "/blog"),
                    .class("pf-link-purple fg-black normal h5 lh-4")
                  ) {
                    "Blog"
                  }

                }

                li {

                  a(
                    .init(name: "href", value: "/about"),
                    .class("pf-link-purple fg-black normal h5 lh-4")
                  ) {
                    "About Us"
                  }

                }

              }

            }

          }

        }

        div(.class("col-m col-d-2 col-m-4")) {

          div {

            h5(.class("fg-black bold ts-d-r0_875 ts-m-r0_75 lh-1 caps fg-white")) {
              "More"
              ol(.class("list-reset")) {
                li {
                  a(
                    .init(name: "href", value: "https://twitter.com/pointfreeco"),
                    .class("pf-link-purple fg-black normal h5 lh-4")
                  ) {
                    "Twitter"
                  }
                }
                li {
                  a(
                    .init(name: "href", value: "https://github/pointfreeco"),
                    .class("pf-link-purple fg-black normal h5 lh-4")
                  ) {
                    "GitHub"
                  }
                }

                li {
                  a(
                    .init(name: "href", value: "mailto:support@pointfree.co"),
                    .class("pf-link-purple fg-black normal h5 lh-4")
                  ) {
                    "Contact Us"
                  }
                }
                li {
                  a(
                    .init(name: "href", value: "/privacy"),
                    .class("pf-link-purple fg-black normal h5 lh-4")
                  ) {
                    "Privacy Policy"
                  }
                }
              }
            }
          }
        }
        div(.class("col-m col-d-6 col-m-12")) {
          p(.class("fg-gray400 fg-black normal h6 lh-4 m-pt2")) {
            "© 2019 Point-Free, Inc. All rights are reserved for the videos and transcripts on this site. All other content is licensed under"
            a(
              .class("pf-link-gray650"),
              .init(name: "href", value: "https://creativecommons.org/licenses/by-nc-sa/4.0/")
            ) {
              "CC BY-NC-SA 4.0"
            }
            ", and the underlying"
            a(.class("pf-link-gray650"), .init(name: "href", value: "https://github/pointfreeco")) {
              "source code"
            }
            " to run this site is licensed under the"
            a(
              .class("pf-link-gray650"),
              .init(
                name: "href",
                value: "https://github.com/pointfreeco/pointfreeco/blob/master/LICENSE"
              )
            ) {
              "MIT license"
            }
          }
        }
      }
    }
  }
}
