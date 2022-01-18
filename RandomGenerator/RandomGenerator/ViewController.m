#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



- (IBAction)Random1to10:(id)sender {
    int min = 1;
    int max = 10;
    
    int randomNum = arc4random_uniform(max - min) + min;
    self.label1.text = [NSString stringWithFormat:@"%i", randomNum];
}


- (IBAction)Random11to20:(id)sender {
        int min = 11;
        int max = 20;
    
        int randomNum = arc4random_uniform(max - min) + min;
        self.label2.text = [NSString stringWithFormat:@"%i", randomNum];
    
}
@end
