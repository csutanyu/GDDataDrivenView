//
//  Created by Larry Tin on 7/9/16.
//

#import <UIKit/UIKit.h>
#import "GDDModel.h"

@interface GDDTableViewLayout : NSObject

- (instancetype)initWithTableView:(UITableView *)tableView withTopic:(NSString *)layoutTopic;

@property(nonatomic, readonly) NSString *layoutTopic;
@property(nonatomic, copy) void (^tapHandler)(GDDModel *model, UITapGestureRecognizer *sender);
@property(nonatomic, copy) void (^infiniteScrollingHandler)(NSArray<GDDModel *> * models, void (^complete)());

@end
