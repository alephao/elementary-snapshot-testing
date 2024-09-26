import Elementary
import SnapshotTesting

extension HTML {
  /// Renders the HTML content into a diff-friendly string.
  /// - Returns: The rendered HTML content.
  ///
  /// Should only be used for testing and debugging purposes.
  public consuming func renderDiff() -> String {
    var renderer = DiffHTMLTextRenderer(spaces: 2)
    Self._render(self, into: &renderer, with: .emptyContext)
    return renderer.collect()
  }
}

extension Snapshotting where Value: HTML, Format == String {
  public static var html: Snapshotting {
    var snapshotting = SimplySnapshotting.lines
      .pullback { (el: Value) in el.renderDiff() }
    snapshotting.pathExtension = "html"
    return snapshotting
  }
}
