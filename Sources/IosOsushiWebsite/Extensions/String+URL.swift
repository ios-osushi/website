import Foundation

extension String {
    func urlEncoded() -> String {
        let allowedChars = CharacterSet.alphanumerics.union(.init(charactersIn: "/?-._~"))
        let removed = removingPercentEncoding ?? self
        return removed.addingPercentEncoding(withAllowedCharacters: allowedChars) ?? removed
    }
}
