// Dummy response
app.get("dummyUser") { request -> User in
    let mockUser = User(id: 123456)
    return mockUser
}