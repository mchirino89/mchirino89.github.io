/// Triggers a generic request in an asynchronous matter
///
/// Example of usage:
///
///      let endpointRequest = URLRequest(url: URL(validURL: "github.com"))
///      let sessionManager = RequestManager()
///      sessionManager.request(endpointRequest) { result in
///          switch(result) in
///          case success(let response):
///          // do whatever you wish with NetworkResult resulting type
///          case failure(let errorType):
///          // handle error appropriately
///      }
///
/// - Parameters:
///   - request: URL request specifications
///   - completion: Resulting completion closure from request