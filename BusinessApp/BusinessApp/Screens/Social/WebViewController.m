#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.detailModal[0];

    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.detailModal[1]]]];

    [self.webView addSubview:self.actInd];
    [self.actInd startAnimating];

    self.webView.navigationDelegate = self;
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {

    [self.actInd stopAnimating];

}

- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation {

    [self.actInd startAnimating];

}

- (IBAction)forward:(id)sender {
    if ([self.webView canGoForward]) {
        [self.webView goForward];
    }
}

- (IBAction)rewind:(id)sender {
    if ([self.webView canGoBack]) {
        [self.webView goBack];
    }
}

- (IBAction)stop:(id)sender {
    [self.webView stopLoading];
}

- (IBAction)refresh:(id)sender {
    [self.webView reload];
}
@end
