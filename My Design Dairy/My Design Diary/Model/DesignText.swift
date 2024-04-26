import Foundation
import SwiftData


@Model class DesignText {
    var id: UUID = UUID() //optionally add some other fields if needed
    var title: String
    var memo: String
    
    init(title: String, memo: String) {
        self.title = title
        self.memo = memo
    }
//    init(photo: Data) {
//        self.id = UUID()
//        self.photo = photo
//    }
}




//@Model
//class Diary {
//
//    var imageData: Data
//    init(imageData: String) {
////        init(content: String, timestamp: Date) {
//        self.imagedata = content
////        self.timestamp = timestamp
//    }
//
//
//}
