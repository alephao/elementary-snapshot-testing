// From Elementary

import Elementary

extension UInt8 {
  /// space
  static let space: UInt8 = 32
  /// "
  static let quot: UInt8 = 34
  /// &
  static let amp: UInt8 = 38
  /// /
  static let fslash: UInt8 = 47
  /// <
  static let lt: UInt8 = 60
  /// =
  static let eq: UInt8 = 61
  /// >
  static let gt: UInt8 = 62
}

extension [UInt8] {
  mutating func writeEscapedAttribute(_ value: consuming String) {
    for byte in value.utf8 {
      switch byte {
      case .amp:  // &
        self.append(contentsOf: "&amp;".utf8)
      case .quot:  // "
        append(contentsOf: "&quot;".utf8)
      default:
        append(byte)
      }
    }
  }

  mutating func writeEscapedContent(_ value: consuming String) {
    for byte in value.utf8 {
      switch byte {
      case .amp:  // &
        append(contentsOf: "&amp;".utf8)
      case .lt:  // <
        append(contentsOf: "&lt;".utf8)
      case .gt:  // >
        append(contentsOf: "&gt;".utf8)
      default:
        append(byte)
      }
    }
  }

  mutating func appendToken(_ token: consuming _HTMLRenderToken) {
    // avoid strings and append each component directly
    switch token {
    case let .startTagOpen(tagName, _):
      append(.lt)  // <
      append(contentsOf: tagName.utf8)
    case let .attribute(name, value):
      append(.space)  // space
      append(contentsOf: name.utf8)
      if let value = value {
        append(contentsOf: [.eq, .quot])  // ="
        writeEscapedAttribute(value)
        append(.quot)  // "
      }
    case .startTagClose:
      append(.gt)  // >
    case let .endTag(tagName, _):
      append(contentsOf: [.lt, .fslash])  // </
      append(contentsOf: tagName.utf8)
      append(.gt)  // >
    case let .text(text):
      writeEscapedContent(text)
    case let .raw(raw):
      append(contentsOf: raw.utf8)
    case let .comment(comment):
      append(contentsOf: "<!--".utf8)
      writeEscapedContent(comment)
      append(contentsOf: "-->".utf8)
    }
  }
}
