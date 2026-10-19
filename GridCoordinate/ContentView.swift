import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        CoordinateWebView()
            .ignoresSafeArea(edges: .bottom)
    }
}

struct CoordinateWebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()
        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.isOpaque = false
        webView.backgroundColor = UIColor(red: 0.957, green: 0.969, blue: 0.980, alpha: 1)
        if let url = Bundle.main.url(forResource: "index", withExtension: "html") {
            webView.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        }
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
