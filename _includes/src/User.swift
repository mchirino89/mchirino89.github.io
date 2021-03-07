import Vapor

struct User: Content {
    let id: Int
    let name: String
    let avatar: String
    let twitterHandler: String
    
    init(id: Int) {
        self.id = id
        name = "Mauricio Chirino"
        avatar = "https://geekingwithmauri.com/assets/resources/profile.png"
        twitterHandler = "chirino89"
    }
}
