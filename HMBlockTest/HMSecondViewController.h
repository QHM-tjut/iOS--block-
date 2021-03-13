//
//  HMSecondViewController.h
//  HMBlockTest
//
//  Created by 齐浩铭 on 2021/3/13.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^messageblock)(NSString *message);

@interface HMSecondViewController : UIViewController

@property (nonatomic,strong,readwrite) messageblock bloak;

@end

NS_ASSUME_NONNULL_END
