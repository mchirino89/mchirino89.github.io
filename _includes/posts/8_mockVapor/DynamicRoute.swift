// Experimenting with parseable input on request's path
app.get("user", ":numericValue") { request -> User in
    let userId = request.parameters.get("numericValue", as: Int.self)!
    let mockUser = User(id: userId)

    return mockUser
}