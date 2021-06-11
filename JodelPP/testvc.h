//
//  testvc.h
//  JodelPP
//
//  Created by khalid Alashrah on 02/08/1441 AH.
//

#import "imports.h"



NS_ASSUME_NONNULL_BEGIN


@interface testvc : UIViewController

@property NSArray *subviews;

//@property (strong, nonatomic) JDLFeedPostCell *k10cell;

@property(nonatomic, strong) JDLLoadingTableView *tableView;

-(id)addSectionAtIndex:(unsigned long long)arg1;
@end

NS_ASSUME_NONNULL_END
