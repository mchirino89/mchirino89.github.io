func launchSharing(with qrImage: UIImage) {
    let socialSharing = SocialMediaViewController(qrImage: qrImage, catalogName: "Qatar 2022")

    rootViewController.present(viewControllerToPresent, animated: true) { [weak self] in
        self?.tracker.track(
            eventName: "share_initiated",
            parameters: ["name": storageController.currentCatalogueName]
        )
    }
}