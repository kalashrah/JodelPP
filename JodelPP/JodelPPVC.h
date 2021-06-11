//
//  JodelPPVC.h
//  JodelPP
//
//  Created by khalid Alashrah on 12/09/1441 AH.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JodelPPVC : UIViewController

static NSString *k10LanguageManager(NSString *AR, NSString *EN) {

    NSString *language = [[NSLocale preferredLanguages] firstObject];
    if([language containsString:@"ar"])
    { return AR; }
    else { return EN; }
    return language;
}

-(void)loadk10JodelppSetting:(UIViewController *)viewController;
@property(nonatomic) double maxVideoLengthSec;
@end

NS_ASSUME_NONNULL_END
