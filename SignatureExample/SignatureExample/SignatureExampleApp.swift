//
//  SignatureExampleApp.swift
//  SignatureExample
//
//  Created by Rahul-dev on 03/04/24.
//

import SwiftUI

@main
struct SignatureExampleApp: App {
    @State private var image: UIImage?
        @State private var pdfData: Data? 
    var body: some Scene {
        WindowGroup {
            ContentView(signatureImage: $image, signaturePDF: $pdfData)
        }
    }
}
