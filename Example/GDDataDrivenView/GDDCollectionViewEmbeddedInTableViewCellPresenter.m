//
// Created by Larry Tin on 7/31/16.
// Copyright (c) 2016 Larry Tin. All rights reserved.
//

#import "GDDCollectionViewEmbeddedInTableViewCellPresenter.h"
#import "GDDCollectionViewEmbeddedInTableViewCellRender.h"
#import "GDDViewController.h"
#import "GDDCollectionViewLayout.h"
#import "GDDSampleCollectionViewCellRender.h"
#import "NSObject+GDChannel.h"

@interface GDDCollectionViewEmbeddedInTableViewCellPresenter ()
@property(weak, nonatomic) GDDViewController *owner;
@end

@implementation GDDCollectionViewEmbeddedInTableViewCellPresenter {

}

- (instancetype)initWithOwner:(id)owner {
  _owner = owner;
  return [self init];
}

- (void)update:(GDDCollectionViewEmbeddedInTableViewCellRender *)render withModel:(GDDModel *)model {
  NSString *layoutTopic = [NSString stringWithFormat:@"%@/%@/%@", self.owner.topic, @"layouts", model.mid];
  render.layout = [[GDDCollectionViewLayout alloc] initWithCollectionView:
      render.collectionView                                     withTopic:layoutTopic withOwner:self.owner];

  NSDictionary *data = model.data;
  NSArray *images = data[@"images"];
  NSMutableArray<GDDModel *> *models = @[].mutableCopy;
  for (NSString *image in images) {
    [models addObject:[[GDDModel alloc] initWithData:image withId:nil
                            withNibNameOrRenderClass:NSStringFromClass(GDDSampleCollectionViewCellRender.class)]];
  }
  [self.bus publishLocal:[render.layout topicForSection:0] payload:models];
}

@end