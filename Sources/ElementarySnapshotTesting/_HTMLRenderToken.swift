import Elementary

// From Elementary

extension _HTMLRenderToken {
  // TODO: remove this method
  func renderedValue() -> String {
    var buffer: [UInt8] = []
    buffer.appendToken(self)
    return String(decoding: buffer, as: UTF8.self)
  }
}
