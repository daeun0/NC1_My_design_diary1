import Foundation
import SwiftData


@Model class Reference {
    var id: UUID = UUID() //optionally add some other fields if needed
    var photo: Data
    
    init(photo: Data) {
//        self.id = id
        self.photo = photo
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
