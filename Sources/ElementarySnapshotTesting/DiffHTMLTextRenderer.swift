import Elementary

struct DiffHTMLTextRenderer {
  let indentation: String

  private var currentIndentation = ""
  private var attributeIndentation = ""
  private var isFirstAttribute = true

  private var output: String = ""

  private let styleRegexHelper = try! Regex("\\s*\"$")

  init(spaces: Int) {
    indentation = String(repeating: " ", count: spaces)
  }

  consuming func collect() -> String {
    output.removeLast()
    return output
  }
}

extension DiffHTMLTextRenderer: _HTMLRendering {
  mutating func appendToken(_ token: consuming _HTMLRenderToken) {
    let rendered = token.renderedValue()
    switch token {
    case .startTagOpen(let string, _):
      output.append(currentIndentation)
      output.append(rendered)
      self.isFirstAttribute = true
      self.attributeIndentation =
        currentIndentation + String(repeating: " ", count: string.count + 1)

    case .attribute(let name, _):
      let atrrValueIndentation =
        attributeIndentation + String(repeating: " ", count: name.count + 3)
      let renderedFormatted: String =
        switch name {
        case "class":
          " "
            + String(
              rendered
                .trimmingPrefix(" ")
                .replacing(" ", with: "\n\(atrrValueIndentation)")
            )
        case "style":
          rendered
            .replacing("; ", with: ";")
            .replacing(";", with: ";\n\(atrrValueIndentation)")
            .replacing(styleRegexHelper, with: "\"")
        //        try! Regex("\"$")
        default: rendered
        }

      if isFirstAttribute {
        output.append(renderedFormatted)
        isFirstAttribute = false
      } else {
        output.append("\n")
        output.append(self.attributeIndentation)
        output.append(renderedFormatted)
      }

    case let .startTagClose(isUnpaired):
      output.append(rendered)
      if !isUnpaired {
        currentIndentation.append(indentation)
      }
      output.append("\n")

    case .endTag:
      currentIndentation.trimPrefix(indentation)
      output.append(currentIndentation)
      output.append(rendered)
      output.append("\n")

    case .text:
      output.append(currentIndentation)
      let renderedFormatted = rendered.replacing("\n", with: "\n\(currentIndentation)")
      output.append(renderedFormatted)
      output.append("\n")

    case .raw:
      output.append(currentIndentation)
      output.append(rendered)
      output.append("\n")

    case .comment:
      output.append(currentIndentation)
      output.append(rendered)
      output.append("\n")
    }
  }
}
