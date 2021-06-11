//
//  JodelPPVC.m
//  JodelPP
//
//  Created by khalid Alashrah on 12/09/1441 AH.
//

#import "JodelPPVC.h"
#import "imports.h"


//
//#define JDL10Color [UIColor colorWithRed:1.00 green:0.60 blue:0.03 alpha:1.0]
//#define JDL10PPColor [UIColor colorWithRed:0.85 green:0.55 blue:0.17 alpha:1.0]
//#define JDL10black [UIColor colorWithRed:0.33 green:0.33 blue:0.33 alpha:1.0]
#define NSString CLEARBLURE = k10LanguageManager(@"ازالة ضبابية الصور", @"RemoveBlureEffect");


@interface JodelPPVC ()

@end

static void LanguageManager()
{
    
}
//static NSString *k10LanguageManager(NSString *AR, NSString *EN) {
//
//    NSString *language = [[NSLocale preferredLanguages] firstObject];
//    if([language containsString:@"ar"])
//    { return AR; }
//    else { return EN; }
//    return language;
//}

@implementation JodelPPVC








- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupLanguag];
    //[self loadk10JodelppSetting:]
}
- (void)setupLanguag{
    
    
}



-(void)loadk10JodelppSetting:(UIViewController *)viewController{
    
    FRPreferences *table;
    FRPViewSection *headerSection = [FRPViewSection sectionWithHeight:70
                                   initBlock:^(UITableViewCell *cell) {
                                       /* design your cell as you wish */
                                       /* block of code executed during cell initialization */
                                       cell.backgroundColor = [UIColor clearColor];
                                       
                                       UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
                                       label.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:60];
                                       [label setText:@"Jodel++"];
                                       [label setTextColor:[UIColor blackColor]];
                                       // [label setShadowColor:[UIColor colorWithRed:1/255.0f green:152/255.0f blue:117/255.0f alpha:1.0f]];
                                       [label setShadowOffset:CGSizeMake(1,1)];
                                       [label setTextAlignment:NSTextAlignmentCenter];
                                       [label setTag:111];
                                       
                                       UILabel *underLabel = [[UILabel alloc] initWithFrame:CGRectZero];
                                       [underLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:14]];
                                       [underLabel setText:@"Thanks for interrupting Jodel++"];
                                       [underLabel setTextColor:[UIColor grayColor]];
                                       [underLabel setTextAlignment:NSTextAlignmentCenter];
                                       [underLabel setTag:222];
                                       
                                        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
                                        if ([[defaults valueForKey:@"kDarkfeedState"] isEqualToString:@"forcedDarkMode"]) {
                                            [label setTextColor:[UIColor whiteColor]];
                                        }
                                       [cell.contentView addSubview:label];
                                       [cell.contentView addSubview:underLabel];
                                   }
                                 layoutBlock:^(UITableViewCell *cell) {
                                     /* block of code executed during cell layoutSubviews */
                                     [[cell.contentView viewWithTag:111] setFrame:CGRectMake(0, -5, cell.frame.size.width, 60)];
                                     [[cell.contentView viewWithTag:222] setFrame:CGRectMake(0, 30, cell.frame.size.width, 60)];
                                 }];


       FRPSection *sectionSettingJodelPP = [FRPSection sectionWithTitle:@"" footer:@""];
       
       
       
       FRPSwitchCell *switchClearBlur = [FRPSwitchCell cellWithTitle:@"ازالة ضبابية الصور"
                                                             setting:[FRPSettings settingsWithKey:@"ClearBlur" defaultValue:@NO]
                                                    postNotification:nil
                                                         changeBlock:^(UISwitch *switchView) {
                                                             // NSLog(@"switch 1 is: %@",[(UISwitch *)switchView isOn]?@"ENABLED":@"DISABLED");
                                                         }];
       ///////////////////////////////////////////////////////////////////////////////////////////////////////////
       FRPSwitchCell *switchUpload = [FRPSwitchCell cellWithTitle:@"رفع صور من الالبوم"
                                                          setting:[FRPSettings settingsWithKey:@"ShowUploadBtn" defaultValue:@NO]
                                                 postNotification:nil
                                                      changeBlock:^(UISwitch *switchView) {
                                                          // NSLog(@"switch 1 is: %@",[(UISwitch *)switchView isOn]?@"ENABLED":@"DISABLED");
                                                      }];
       ///////////////////////////////////////////////////////////////////////////////////////////////////////////
       
       ///////////////////////////////////////////////////////////////////////////////////////////////////////////
       FRPSwitchCell *switchPastOption = [FRPSwitchCell cellWithTitle:@"تفعيل النسخ واللصق"
                                                        setting:[FRPSettings settingsWithKey:@"PastOption" defaultValue:@NO]
                                               postNotification:nil
                                                    changeBlock:^(UISwitch *switchView) {
                                                        
                                                    }];
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////
    FRPSwitchCell *switchAdsBlock = [FRPSwitchCell cellWithTitle:@"إزالة الاعلانات"
             setting:[FRPSettings settingsWithKey:@"noAdsEnabled" defaultValue:@NO]
    postNotification:nil
         changeBlock:^(UISwitch *switchView) {
             
         }];
       //    ///////////////////////////////////////////////////////////////////////////////////////////////////////////
       //    FRPSwitchCell *switchFLEXible = [FRPSwitchCell cellWithTitle:@"FLEXible"
       //                                                       setting:[FRPSettings settingsWithKey:@"FLEXible" defaultValue:@NO]
       //                                              postNotification:nil
       //                                                     changeBlock:^(UISwitch *switchView) {
       //                                                         // NSLog(@"switch 1 is: %@",[(UISwitch *)switchView isOn]?@"ENABLED":@"DISABLED");
       //                                                     }];
       
       
       [switchClearBlur.switchView setOnTintColor:[UIColor colorWithRed:0 green:0.545 blue:0.894 alpha:1]];
       [switchUpload.switchView setOnTintColor:[UIColor colorWithRed:0 green:0.545 blue:0.894 alpha:1]];
       
       //    [switchFakeLocation.switchView setOnTintColor:[UIColor colorWithRed:0 green:0.545 blue:0.894 alpha:1]];
       //    [switchFLEXible.switchView setOnTintColor:[UIColor colorWithRed:0 green:0.545 blue:0.894 alpha:1]];
       
    [sectionSettingJodelPP addCell:switchClearBlur];
    [sectionSettingJodelPP addCell:switchUpload];
    [sectionSettingJodelPP addCell:switchPastOption];
    [sectionSettingJodelPP addCell:switchAdsBlock];
       //    [sectionSettingJodelPP addCell:switchFakeLocation];
       //    [sectionSettingJodelPP addCell:switchFLEXible];
       /////////////////////////////////////////////////////////////////////////////////////////////////////
    FRPSection *LocationFakeSection = [FRPSection sectionWithTitle:@"" footer:@""];
    
    
    
                           
    FRPLinkCell *LocationCell = [FRPLinkCell cellWithTitle:@"تغيير الموقع" selectedBlock:^(id sender){
        //LOSPLocationDebugViewController *vc = [[LOSPLocationDebugViewController alloc] init];
        
       
        //[self.navigationController pushViewController:vc animated:YES];
        LOSPLocationDebugViewController *LOSP = [[LOSPLocationDebugViewController alloc]init];
       
       
        
        [viewController presentViewController:LOSP animated:YES completion:nil];
       // [table.navigationController pushViewController:LOSP animated:YES];
    }
        ];
    
    [LocationFakeSection addCell:LocationCell];
    
    ////////////////////////////////////////////////
       NSURL *kalashrahprofile = [[NSURL alloc] initWithString:@"https://pbs.twimg.com/profile_images/1004899885391532033/YJsPLyUM_400x400.jpg"];
       NSData *kalashrahdata = [NSData dataWithContentsOfURL:kalashrahprofile];
       
    
      
       
       FRPSection *sectionDeveloper = [FRPSection sectionWithTitle:@"مطور الاداة" footer:@""];
       
       [sectionDeveloper addCell:[FRPDeveloperCell cellWithTitle:@"khalid Alashrah" detail:@"@kalashrah" image:[UIImage imageWithData:kalashrahdata] url:@"https://twitter.com/kalashrah"]];
       /////////////////////////////////////////////////////////////////////////////////////////////////////
       
       
       table = [FRPreferences tableWithSections:@[headerSection, sectionSettingJodelPP,LocationFakeSection, sectionDeveloper]
                                                         title:@"k10"
                                                     tintColor:JDL10Color];
       
       
       
       [viewController.navigationController pushViewController:table animated:YES];
       // [viewController presentViewController:table animated:YES completion:nil];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
