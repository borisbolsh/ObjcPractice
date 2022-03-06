#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ServiceViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *detailImage;
@property (weak, nonatomic) IBOutlet UILabel *detailTitle;
@property (weak, nonatomic) IBOutlet UITextView *detailDescription;

@property (strong, nonatomic) NSArray *detailModal;


@end

NS_ASSUME_NONNULL_END
