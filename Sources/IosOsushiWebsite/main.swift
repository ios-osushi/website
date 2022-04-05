import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct IosOsushiWebsite: Publish.Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://ios-osushi.github.io")!
    var name = "iOS Osushi🍣"
    var description = "iOS関連のニュースを定期的に配信します。"
    var language: Language { .japanese }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try IosOsushiWebsite().publish(using: [
    .addMarkdownFiles(),
    .copyResources(),
    .generateHTML(withTheme: .iosOsushi),
    .generateRSSFeed(including: [.posts]),
    .generateSiteMap(),
    .deploy(using: .gitHub("ios-osushi/ios-osushi.github.io", useSSH: false))
])
