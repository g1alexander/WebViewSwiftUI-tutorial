//
//  WebView.swift
//  WebView
//
//  Created by g1alexander on 11/7/22.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url : String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: url)!))
    }
}
