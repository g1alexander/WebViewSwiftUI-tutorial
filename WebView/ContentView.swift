//
//  ContentView.swift
//  WebView
//
//  Created by g1alexander on 11/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showWebView = false
    @State private var showSafariWebView = false
    
    var body: some View {
        //navegacion externa
        
        // si no necesitas que el usuario permanezca en la app usa link
        VStack(spacing: 16) {
            Link(destination: URL(string: "https://g1alexander.com")!){
                HStack{
                    Image(systemName: "link")
                    Text("g1alexander.com")
                }
            }
        }
        // navegation interna en la web
        
        // si necesitas una experiencia personalizable utiliza WKWebView
        Button("abrir webview"){
            showWebView = true
        }.sheet(isPresented: $showWebView){
            WebView(url: "https://g1alexander.com")
        }
        
        // si quieres cargar toda la experiencia del navegador safari utiliza SFSafariViewController
        Button("abrir webview Safari"){
            showSafariWebView = true
        }.sheet(isPresented: $showSafariWebView){
            SafariWebView(url: "https://g1alexander.com")
        }
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
