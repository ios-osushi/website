import Foundation

extension String {
    func urlEncoded() -> String {
        let allowedChars = CharacterSet.alphanumerics.union(.init(charactersIn: "/?-._~"))
        let decoded = removingPercentEncoding ?? self
        return decoded.addingPercentEncoding(withAllowedCharacters: allowedChars) ?? decoded
    }
}
