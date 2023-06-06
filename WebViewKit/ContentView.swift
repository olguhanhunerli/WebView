//
//  ContentView.swift
//  WebViewKit
//
//  Created by Olguhan Hünerli on 21.05.2023.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @State private var urlString = "https://extrydev.com"
    var body: some View {
    WebView(urlString: urlString)
        
    }
}
struct WebView: UIViewRepresentable {
    
    let urlString: String
   
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: urlString) else {
            return WKWebView()
        }
        let request = URLRequest(url:url)
        let webView = WKWebView()
        webView.load(request)
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: urlString) else {
            return
        }
        let request = URLRequest(url: url)
        uiView.load(request)
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
