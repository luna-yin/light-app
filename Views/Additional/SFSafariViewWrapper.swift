//
//  SFSafariViewWrapper.swift
//  Light
//
//  Created by Luna and Lucy Yin on 1/3/22.
//

import SwiftUI
import SafariServices

// Safari web browser pop-up
struct SFSafariViewWrapper: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<Self>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SFSafariViewWrapper>) {
        return
    }
}
