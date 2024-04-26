//
//  ImageModel.swift
//  My Design Diary
//
//  Created by Lee daeun on 4/16/24.
//

import SwiftUI
import Combine

class ImageModel: ObservableObject {
    @Published var selectedPhotos: [UIImage] = []
}
