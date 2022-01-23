#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)randomWord:(id)sender {
    NSArray *words = @[@"Apple",@"Banana",@"Carrot",@"Lemon",@"Tomato"];
    int randomNum = arc4random() % words.count;
    
    self.label.text = words[randomNum];
}

@end
