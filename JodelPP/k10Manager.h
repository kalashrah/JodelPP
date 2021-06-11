//
//  k10Manager.h
//  JodelPP
//
//  Created by khalid Alashrah on 10/01/1442 AH.
//

#import <Foundation/Foundation.h>
#import "imports.h"


NS_ASSUME_NONNULL_BEGIN

@interface k10Manager : NSObject

+ (void)DownloadVideoWithURL:(NSString *)url completionHandler:(void (^)(NSURL *filePath, NSError *error))completionHandler;
//+ (BOOL)isVideoCell:(_TtC5Jodel15JDLFeedPostCell *)cell;
//+ (BOOL)isDMVideoCell:(T1InlineMediaView *)cell;
+ (BOOL)doesContainDigitsOnly:(NSString *)string;
+ (void)showSettings:(UIViewController *)_self;
+ (void)showSaveingViewController:(NSURL *)url;
+ (BOOL)isLTR;

@end

NS_ASSUME_NONNULL_END
