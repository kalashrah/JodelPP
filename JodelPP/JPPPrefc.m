//
//  JPPPrefc.m
//  JodelPP
//
//  Created by khalid Alashrah on 12/09/1441 AH.
//

#import "JPPPrefc.h"

@interface JPPPrefc ()

@end

@implementation JPPPrefc

//-(void)uploaded{
//
//    UIImagePickerController *imagePickController = [[UIImagePickerController alloc]init];
//    imagePickController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
//    imagePickController.delegate= self;
//    imagePickController.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
//    [self presentViewController:imagePickController animated:YES completion:nil];
//
//
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FRPViewSection *headerSection = [FRPViewSection sectionWithHeight:70
      initBlock:^(UITableViewCell *cell) {
          /* design your cell as you wish */
          /* block of code executed during cell initialization */
          cell.backgroundColor = [UIColor clearColor];
          
          UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
          label.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:60];
          [label setText:@"JodelPP"];
          [label setTextColor:[UIColor blackColor]];
          // [label setShadowColor:[UIColor colorWithRed:1/255.0f green:152/255.0f blue:117/255.0f alpha:1.0f]];
          [label setShadowOffset:CGSizeMake(1,1)];
          [label setTextAlignment:NSTextAlignmentCenter];
          [label setTag:111];
          
          UILabel *underLabel = [[UILabel alloc] initWithFrame:CGRectZero];
          [underLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:14]];
          [underLabel setText:@"Thanks for interrupting JodelPP"];
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
    [sectionSettingJodelPP addCell:switchClearBlur];
    [sectionSettingJodelPP addCell:switchUpload];
    [sectionSettingJodelPP addCell:switchPastOption];
       //    [sectionSettingJodelPP addCell:switchFakeLocation];
       //    [sectionSettingJodelPP addCell:switchFLEXible];
       /////////////////////////////////////////////////////////////////////////////////////////////////////
    FRPSection *LocationFakeSection = [FRPSection sectionWithTitle:@"k10" footer:@"k10"];
    
    
    
                           
    FRPLinkCell *LocationCell = [FRPLinkCell cellWithTitle:@"تغيير الموقع" selectedBlock:^(id sender){
        //LOSPLocationDebugViewController *vc = [[LOSPLocationDebugViewController alloc] init];
        
       
        //[self.navigationController pushViewController:vc animated:YES];
        
        
    }
        ];
//    [LocationCell respondsToSelector:@selector(fake)];
    [LocationFakeSection addCell:LocationCell];
    
    self.sections = [FRPreferences tableWithSections:@[sectionSettingJodelPP,LocationFakeSection] title:@"k10" tintColor:JDL10Color];
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return self.sections.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
