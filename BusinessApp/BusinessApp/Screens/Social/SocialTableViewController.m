#import "SocialTableViewController.h"
#import "SocialTableViewCell.h"
#import "WebViewController.h"

@interface SocialTableViewController ()

@end

@implementation SocialTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *path = [[NSBundle mainBundle] pathForResource:@"Social" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];

    dataSelect = dict[@"SocialMedia"];

    self.tableView.rowHeight = 100;

    self.navigationItem.title = @"Social Links";

    self.tableView.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Background"]];

    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return dataSelect.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    SocialTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSDictionary *dict = dataSelect[indexPath.row];

    cell.cellTitle.text = dict[@"Title"];
    cell.cellImageView.image = [UIImage imageNamed:dict[@"Image"]];

    cell.cellImageView.layer.cornerRadius = 5;
    cell.cellImageView.clipsToBounds = YES;
    
    return cell;
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([[segue identifier] isEqualToString:@"showSocial"]) {

        WebViewController *detailView = [segue destinationViewController];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];

        NSDictionary *dict = dataSelect[indexPath.row];

        detailView.detailModal = @[dict[@"Title"], dict[@"URL"]];
    }
}


@end
