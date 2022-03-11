#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.button1.layer.cornerRadius = 5;
}

- (IBAction)contactUs:(id)sender {
    [(UITabBarController *) self.tabBarController setSelectedIndex:4];
}
@end
