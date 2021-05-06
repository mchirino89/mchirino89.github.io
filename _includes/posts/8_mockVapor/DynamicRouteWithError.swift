// Handling input errors
app.get("user", ":numericValue") { request -> User in
    guard let userId = request.parameters.get("numericValue", as: Int.self) else {
        throw Abort(.badRequest)
    }
    
    let mockUser = User(id: userId)
    return mockUser
}