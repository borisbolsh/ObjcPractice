#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIView *statusBar = [[UIView alloc]initWithFrame:[UIApplication sharedApplication].keyWindow.windowScene.statusBarManager.statusBarFrame] ;
    statusBar.backgroundColor = [UIColor colorWithRed: 55.0/255.0 green:86.0/255.0 blue:135.0/255.0 alpha:1.0];
    [[UIApplication sharedApplication].keyWindow addSubview:statusBar];

    self.servicesBtn.layer.cornerRadius = 5;
    self.portfolioBtn.layer.cornerRadius = 5;
    self.aboutUsBtn.layer.cornerRadius = 5;
    self.contactUsBtn.layer.cornerRadius = 5;
    self.socialLinksBtn.layer.cornerRadius = 5;
}


- (IBAction)socialBtnTapped:(id)sender {
}

- (IBAction)contactUsTapped:(id)sender {
    [(UITabBarController *) self.tabBarController setSelectedIndex:4];
}

- (IBAction)aboutUsTapped:(id)sender {
    [(UITabBarController *) self.tabBarController setSelectedIndex:1];
}

- (IBAction)portfolioTapped:(id)sender {
    [(UITabBarController *) self.tabBarController setSelectedIndex:3];
}

- (IBAction)servicesTapped:(id)sender {
    [(UITabBarController *) self.tabBarController setSelectedIndex:2];
}
@end
