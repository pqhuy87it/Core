//
//  Created by Henry Tran
//  Copyright © 2017 THL. All rights reserved.
//

import Foundation

public func logD(_ object: Any? = nil, functionName: String = #function, fileName: String = #file, lineNumber: Int = #line) {
    #if !NDEBUG
        let className = (fileName as NSString).lastPathComponent
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        let date = formatter.string(from: NSDate() as Date)
        print("⚠️ [\(date)] <\(className)> \(functionName) [#\(lineNumber)] \n\(object ?? "Object is nil")\n")
    #endif
}
