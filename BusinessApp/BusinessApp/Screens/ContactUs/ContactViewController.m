#import "ContactViewController.h"
#import "MapPin.h"

@interface ContactViewController ()

@end

@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.button1.layer.cornerRadius = 5;
    self.button2.layer.cornerRadius = 5;
    self.button3.layer.cornerRadius = 5;
    self.button4.layer.cornerRadius = 5;

    MKCoordinateRegion region;
    MKCoordinateSpan span;
    CLLocationCoordinate2D location;

    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;

    location.latitude = 51.501364;
    location.longitude = -0.1418899999999894;

    region.span = span;
    region.center = location;

    [self.mapView setRegion:region animated:YES];

    MapPin *ann = [[MapPin alloc] init];
    ann.coordinate = location;
    [self.mapView addAnnotation:ann];

    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];

}

- (IBAction)callUs:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:123456789"] options:@{} completionHandler:nil];
}

- (IBAction)directions:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://maps.apple.com/maps?daddr=51.501364,-0.1418899999999894"] options:@{} completionHandler:nil];
}

@end
