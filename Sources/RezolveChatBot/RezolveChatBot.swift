//
//  RezolveChatBot.swift
//  ResolveAI
//
//  Created by Arun Madasamy on 06/16/22.
//

import UIKit
import WebKit

public class RezolveChatBot: UIViewController, WKNavigationDelegate, WKUIDelegate {
      
  public private(set) lazy var webView:WKWebView = WKWebView(frame: CGRect.zero)
    public var tenantName = ""
  override public func loadView() {
    super.loadView()
      presentWebView()
  }
    public func presentWebView() {
        // Create a configuration for the web view
        let configuration = WKWebViewConfiguration()
        webView = WKWebView(frame: view.bounds, configuration: configuration)
        
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight] // Adjusts the web view's size
        webView.uiDelegate = self
        webView.navigationDelegate = self
        view.addSubview(webView)
        self.reloadWebView()

    }

    func reloadWebView() {
        do {
                let bundle = Bundle.module
            guard let filePath = bundle.path(forResource: "index", ofType: "html") else {
                print("File reading error")
                return
            }
            
            let contents = try String(contentsOfFile: filePath, encoding: .utf8)
            let baseUrl = URL(fileURLWithPath: filePath)
            webView.loadHTMLString(contents, baseURL: baseUrl)
            }
        catch {
            print ("File HTML error")
        }
    }
    public func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.webView.evaluateJavaScript("myJSGuest('\(self.tenantName)')"){ result, error in
            guard error == nil else {
                print("Error Loading tenant")
                return
            }
        }
    }
}
