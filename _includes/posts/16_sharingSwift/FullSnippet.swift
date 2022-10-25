func launchSharing(with qrImage: UIImage) {
    let socialSharing = SocialMediaViewController(qrImage: qrImage, catalogName: "Qatar 2022")

    socialSharing.completionWithItemsHandler = { [weak self] item, completed, values, error in
         self?.trackSharing(itemType: item, 
                            wasSharingCompleted: completed, 
                            values: values,
                            receivedErrors: error)
    }

    rootViewController.present(viewControllerToPresent, animated: true) { [weak self] in
        // Anonymous closure executed after the `present` action is done
        self?.tracker.track(
            eventName: "share_initiated",
            parameters: ["name": storageController.currentCatalogueName]
        )
    }
}

func trackSharing(itemType: UIActivity.ActivityType?,
                  wasSharingCompleted: Bool,
                  values: [Any]?,
                  receivedErrors: Error?) {
        guard wasSharingCompleted else {
            // Sharing action got cancelled by the user 😕
            tracker.track(eventName: "share_canceled", parameters: nil)
            return
        }

        var parameters: [String: Any] = ["method": itemType?.rawValue ?? "N/A"]

        if let shareError = receivedErrors?.localizedDescription {
            // Something went wrong and we track down exactly what 🧐
            parameters["error"] = shareError
            tracker.track(eventName: "share_failed", parameters: parameters)
            return
        }

        // Jackpot! The user went through the entire funnel 🥳
        tracker.track(eventName: "share_executed_successfully", parameters: parameters)
    }
}