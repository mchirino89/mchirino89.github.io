/// Protocol intended to provide a key string localized for its respective value
protocol Localizable {
    /// Returns localized value should it be found defined with this matching key
    var key: String { get }
}

extension Localizable where Self: RawRepresentable, Self.RawValue == String {
    var key: String {
        NSLocalizedString(rawValue, comment: "")
    }
}

enum Translator: String, Localizable {
    case title
    case select
    case polish
    case publish
}

struct StepsModel {
    let dataSource: [String] = [
        Translator.select.key,
        Translator.polish.key,
        Translator.publish.key
    ]
}