import UIKit

final class SocialMediaViewController: UIActivityViewController {
    init(qrImage: UIImage, catalogName: String) {
        let message = "These are my missing stickers for \(catalogName)"
        super.init(activityItems: [message, qrImage], applicationActivities: nil)
        excludedActivityTypes = [.assignToContact,
                                 .addToReadingList,
                                 .markupAsPDF,
                                 .openInIBooks,
                                 .postToFlickr,
                                 .print,
                                 .saveToCameraRoll]
    }
}