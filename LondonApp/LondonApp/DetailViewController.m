#import "DetailViewController.h"
#import "MapPin.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.mapView.layer.cornerRadius = 5;
    self.button.layer.cornerRadius = 5;

    self.navigationItem.title = self.detailModal[0];

    self.detailTitle.text = self.detailModal[0];
    self.detailAddress.text = self.detailModal[1];
    self.detailImage.image = [UIImage imageNamed:self.detailModal[2]];

    self.detailDescription.text = self.detailModal[3];

    MKCoordinateRegion region;
    MKCoordinateSpan span;

    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;

    CLLocationCoordinate2D location;

    location.latitude = [self.detailModal[4] doubleValue];
    location.longitude = [self.detailModal[5] doubleValue];

    region.span = span;
    region.center = location;

    [self.mapView setRegion:region animated:YES];

    MapPin *ann = [[MapPin alloc] init];
    ann.coordinate = location;

    [self.mapView addAnnotation:ann];
}

- (IBAction)directions:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://maps.apple.com/?daddr=%@,%@",self.detailModal[4], self.detailModal[5]]] options:@{} completionHandler:nil];
        
}

@end
