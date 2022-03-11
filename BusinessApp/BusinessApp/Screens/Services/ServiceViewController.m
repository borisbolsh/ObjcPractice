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

@end
