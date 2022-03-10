#import "ServiceViewController.h"

@interface ServiceViewController ()

@end

@implementation ServiceViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.title = self.detailModal[0];

    self.detailTitle.text = self.detailModal[0];
    self.detailDescription.text = self.detailModal[2];

    self.detailImage.image = [UIImage imageNamed:self.detailModal[1]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
