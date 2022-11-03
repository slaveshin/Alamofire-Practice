import Foundation
import Alamofire

final class MyLogger: EventMonitor {
    let queue = DispatchQueue(label: "ApiLog")
    
    func requestDidResume(_ request: Request) {
        print("MyLogger - requestDidResume()")
    }
    
    func request(_ request: DataRequest, didParseResponse response: DataResponse<Data?, AFError>) {
        print("MyLogger - request.didParseResponse()")
        debugPrint(response)
    }
}
