import Foundation
import Alamofire

// singletone
final class MyAlamofireManger {
    
    static let shared = MyAlamofireManger()
    
    // interceptor
    let interceptors = Interceptor(interceptors:[BaseInterceptor(), ])
    
    
    // 로거 설정
    // let monitors =
    
    // 세션 설정
    var session: Session
    
    private init() {
        session = Session(interceptor: interceptors)
    }
    
}
