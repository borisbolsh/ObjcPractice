#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;

- (IBAction)Random1to10:(id)sender;
- (IBAction)Random11to20:(id)sender;

@end

