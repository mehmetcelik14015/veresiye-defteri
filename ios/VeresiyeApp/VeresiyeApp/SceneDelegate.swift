import UIKit
import WebKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    private let appURL = URL(string: "https://mehmetcelik14015.github.io/veresiye-defteri/")!

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = scene as? UIWindowScene else { return }

        let configuration = WKWebViewConfiguration()
        configuration.allowsInlineMediaPlayback = true
        configuration.mediaTypesRequiringUserActionForPlayback = []

        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.scrollView.contentInsetAdjustmentBehavior = .never
        webView.load(URLRequest(url: appURL))

        let controller = UIViewController()
        controller.view = webView

        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
    }
}
