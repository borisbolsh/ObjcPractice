#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *servicesBtn;
@property (weak, nonatomic) IBOutlet UIButton *portfolioBtn;
@property (weak, nonatomic) IBOutlet UIButton *aboutUsBtn;
@property (weak, nonatomic) IBOutlet UIButton *contactUsBtn;
@property (weak, nonatomic) IBOutlet UIButton *socialLinksBtn;

- (IBAction)servicesTapped:(id)sender;
- (IBAction)portfolioTapped:(id)sender;
- (IBAction)aboutUsTapped:(id)sender;
- (IBAction)contactUsTapped:(id)sender;

@end

