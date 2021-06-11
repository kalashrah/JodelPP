//  Created by kalashrah //


#import "imports.h"





%hook nuAvn

//- (UILabel *)titleLabel{
//
//    UILabel *label = %orig;
//    [label removeFromSuperview];
//    label.hidden = YES;
//
//    return label;
//}
- (void)layoutSubviews {
    %orig;
    self.backgroundColor = JDL10black;
    UILabel *label = MSHookIvar<UILabel *>(self, "_titleLabel");
    [label removeFromSuperview];
}
//- (NSArray *)subviews{
//
//    NSArray *sub = %orig;
//   for (int i = 0; i < sub.count; i++){
//       [sub[i] removeFromSuperview];
//   }
//    return sub;
//}

%end

%hook _TtC5Jodel28JDLUserSectionViewController
//%hook JDLUserSectionViewController
- (long long)tableView:(id)arg1 numberOfSections:(long long)arg2{
    arg1 = self.tableView;
    arg2 = 2;
    return 2;
}
//- (void)viewWillAppear:(BOOL)arg1 {
//    %orig;
////    if (self.tableView.numberOfSections == 1) {
////        TFNItemsDataViewControllerBackingStore *DataViewControllerBackingStore = self.backingStore;
////        //Insert section at Top "TFNItemsDataViewSectionController"
////        [DataViewControllerBackingStore insertSection:0 atIndex:0];
////        //insert Row 0 in section 0 "TFNDataViewItem"
////        [DataViewControllerBackingStore insertItem:@"Row 0 " atIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
////        //Insert Row1 in section 0 "TFNDataViewItem"
////        [DataViewControllerBackingStore insertItem:@"Row1" atIndexPath:[NSIndexPath indexPathForRow:1 inSection:0]];
////    }
//        k10TableSection *JodelPPSection = [self addSectionAtIndex:0];
//        k10TableRow *NewRow = [[%c(k10TableRow) alloc] init];
//
//       JDLFullWidthTableViewCell *Cell = [[%c(JDLFullWidthTableViewCell) alloc] init];
//
//       //    FRPNewLinkCell *Cell = [FRPNewLinkCell cellWithTitle:@"اعدادت الخصوصية" image:[UIImage imageNamed:@"/Library/Application Support/Whats10.bundle/scurtimg.png"]];
//
//       [Cell.textLabel setText:@"Jodel PP"];
//       //Cell.imageView.image = [UIImage imageNamed:@"/Library/Application Support/Whats10.bundle/Whats10Icon.png"];
//      // [Cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
//    
//    //[NewRow initWithCell:Cell];
//
//   // [JodelPPSection setRows:@[NewRow]];
//}
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return 9;
////    if (section == 1)
////    {return 2;}
////    else {
////        return %orig;
////    }
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[%c(UITableViewCell) alloc] init];
    cell.textLabel.font = [UIFont boldSystemFontOfSize:14.0];
    cell.textLabel.text = @"BBMPlus";
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    if (indexPath.section == 3) {
        
        UITableViewCell *cell = [[%c(UITableViewCell) alloc] init];
        
        if (indexPath.row == 0){
            return %orig;
        }
        else {
            cell.textLabel.font = [UIFont boldSystemFontOfSize:14.0];
            cell.textLabel.text = @"BBMPlus";
            [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
            
        }
        
        return cell;
    }
    
    else {
        return %orig;
         //return cell;
        
    }
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 3;
}
- (void)viewDidLoad {

    %orig;

//    UIBarButtonItem *heart = [[UIBarButtonItem alloc]initWithImage:[UIImage systemImageNamed:@"slowmo"] style:UIBarButtonItemStylePlain target:self action:@selector(JodelPPPreset)];
//
//    self.navigationItem.rightBarButtonItem = heart;
    //self.tableView.numberOfSections = 2;
//    UIButton *fakeLocationBtn = [[UIButton alloc]init];
//    [fakeLocationBtn setTitle:@"_!_" forState:UIControlStateNormal];
//    [fakeLocationBtn setFrame:CGRectMake(55, 0.5, 48, 48)];
//    [fakeLocationBtn addTarget:self action:@selector(fakePreset) forControlEvents:UIControlEventTouchUpInside];
//    fakeLocationBtn.layer.cornerRadius = 24;
//    fakeLocationBtn.layer.masksToBounds = YES;
//    fakeLocationBtn.layer.borderWidth = 3;
//    fakeLocationBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    
//////////////////////////////////////////////////////////////
    UIButton *k10Prefcbtntn = [[UIButton alloc]init];
      [k10Prefcbtntn setFrame:CGRectMake(0.5, 0.5, 48, 48)];
      [k10Prefcbtntn addTarget:self action:@selector(JodelPPPreset) forControlEvents:UIControlEventTouchUpInside];
      k10Prefcbtntn.layer.cornerRadius = 24;
      k10Prefcbtntn.layer.masksToBounds = YES;
      k10Prefcbtntn.layer.borderWidth = 3;
      k10Prefcbtntn.layer.borderColor = [UIColor whiteColor].CGColor;

      UILabel *lable = [[UILabel alloc]init];
      [lable setText:@"+"];
      [lable setTextAlignment:NSTextAlignmentCenter];
      [lable setFrame:k10Prefcbtntn.frame];
      [lable setTextColor:[UIColor whiteColor]];
      [lable setFont:[UIFont fontWithName:@"AvenirNext-Bold" size:40]];
      
      
         
         
         
    
    [self.view addSubview:k10Prefcbtntn];
    [self.view addSubview:lable];
    
    
}



%new
-(void)JodelPPPreset{
    [[JodelPPVC alloc] loadk10JodelppSetting:self];
    
    
    
}




%end



%hook JDLFeedImageView


- (NSArray *)subviews{
 
    %orig;
    NSArray *sub = %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"ClearBlur"]) {
        for (int i = 0; i < sub.count; i++){
            //[sub[i] removeFromSuperview];
            [sub[i] setAlpha:0];
        }
    } else {
        return %orig;
    }
    return sub;
}

 
%end


%hook JDLImageCaptureViewController

-(double)maxVideoLengthSec{
    double i = 33.00000000000000;
    return i;
}
//-(void)setMaxVideoLengthSec:(double)maxVideoLengthSec{
//    maxVideoLengthSec =
//}
%end

%hook JDLImagePreviewViewController


- (void)viewDidLoad {
 //%orig;
 
    /*
    UIButton *k10btn = MSHookIvar<UIButton *>(self, "_k10btn");
    saveBtn.layer.cornerRadius = saveBtn.frame.size.width / 2;
    saveBtn.layer.masksToBounds = YES;
    saveBtn.layer.borderWidth = 2;
*/

    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"ShowUploadBtn"]) {
        
            %orig;
            UIButton *uploadbtn = [[UIButton alloc]init];
        //     uploadbtn.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 63, [UIScreen mainScreen].bounds.size.height - 235, 36, 36);
            uploadbtn.frame = CGRectMake(20, [UIScreen mainScreen].bounds.size.height - 140, 36, 36);
            [uploadbtn setTitle:@"⇧" forState:UIControlStateNormal];
            [uploadbtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            uploadbtn.font = [UIFont fontWithName:@"HelveticaNeue" size:30];
            uploadbtn.layer.cornerRadius = uploadbtn.frame.size.width / 2;
            uploadbtn.layer.masksToBounds = YES;
            uploadbtn.layer.borderWidth = 2;
            [uploadbtn.layer setShadowOffset:CGSizeMake(0, -3)];
            [uploadbtn.layer setShadowColor:[[UIColor blackColor] CGColor]];
            [uploadbtn.layer setShadowOpacity:0.5];
            [uploadbtn.layer setShadowRadius:3];

            uploadbtn.layer.borderColor = [UIColor whiteColor].CGColor;
         [uploadbtn addTarget:self action:@selector(uploaded) forControlEvents:UIControlEventTouchUpInside];
        
        UIButton *newStickersBtn = [[UIButton alloc]init];
        newStickersBtn.frame = CGRectMake(20, [UIScreen mainScreen].bounds.size.height - 190, 36, 36);
        [newStickersBtn setImage:[UIImage imageNamed:@"previewStickers"] forState:UIControlStateNormal];
        [newStickersBtn addTarget:self action:@selector(onStickersTap:) forControlEvents:UIControlEventTouchUpInside];
        [newStickersBtn.layer setShadowOffset:CGSizeMake(0, -3)];
        [newStickersBtn.layer setShadowColor:[[UIColor blackColor] CGColor]];
        [newStickersBtn.layer setShadowOpacity:0.5];
        [newStickersBtn.layer setShadowRadius:3];
        
        [self.view addSubview:uploadbtn];
        [self.view addSubview:newStickersBtn];
        
    } else {
         %orig;
    }
 
 
 }
 %new

 -(void)uploaded{
 
     UIImagePickerController *imagePickController = [[UIImagePickerController alloc]init];
     imagePickController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
     imagePickController.delegate= self;
     imagePickController.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
     [self presentViewController:imagePickController animated:YES completion:nil];
 
 
 }
 %new
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    self.previewImageView.image = image;
    [self dismissViewControllerAnimated:YES completion:NO];
}
%new
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [self dismissViewControllerAnimated:YES completion:NO];
}

%end

%hook _TtC5Jodel26ImagePreviewViewController



- (void)viewDidLoad {
    %orig;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"ShowUploadBtn"]) {
         [self.savePictureButton setImage:[UIImage imageNamed:@"share-3.png"] forState:UIControlStateNormal];
        
    }
    
//    UIImageView *previewImageView = [[UIImageView alloc] init];
    // UIButton *uploadbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    // uploadbtn.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 120, [UIScreen mainScreen].bounds.size.height - 60, 50, 40);
    // [uploadbtn setImage:[UIImage imageNamed:@"/Library/Application Support/JodelPP.bundle/UploadImg.png"] forState:UIControlStateNormal];
    // [uploadbtn addTarget:self action:@selector(upload:) forControlEvents:UIControlEventTouchUpInside];
    // [self.view addSubview:uploadbtn];
}

- (void)savePictureTap:(id)arg1{
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"ShowUploadBtn"]) {
        [self upload];
    } else {
        %orig;
    }
}

%new

-(void)upload{
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    picker.delegate = self;
    picker.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:picker animated:YES completion:nil ];
  
}
%new

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    
    // UIImageView *previewImage = MSHookIvar<UIImageView *>(self,"_previewImageView");
    // UIImageView *largeImageView = MSHookIvar<UIImageView *>(self, "_largeImageView");

    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    // previewImage.image = image;
    self.previewImageView.image = image;
    [self dismissViewControllerAnimated:YES completion:nil];
}
%new
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {

    [self dismissViewControllerAnimated:YES completion:nil];
}

%end



%hook PasteDisabledTextField

- (bool)canPerformAction:(SEL)arg1 withSender:(id)arg2 {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
       if ([defaults boolForKey:@"PastOption"]) {
           return true;
       } else {
           return %orig;
       }
}
%end

%hook PlaceholderTextView
- (bool)canPerformAction:(SEL)arg1 withSender:(id)arg2 {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"PastOption"]) {
        return true;
    } else {
        return %orig;
    }
}
%end

%hook m_sFJ

- (_Bool)application:(UIApplication *)application didFinishLaunchingWithOptions:(id)arg2 {
    %orig;
    
    [[k10Manager alloc]init];
    return true;
}
%end
@interface PictureFeedImageCell : UICollectionViewCell{
    UIImageView *thumbnailImageView;
}


@property(strong, nonatomic) UIImageView *thumbnailImageView;

-(void)saveImage;
@end
%hook PictureFeedImageCell


- (void)layoutSubviews {
    %orig;
    
          UIButton *saveBtn = [[UIButton alloc]init];
                 saveBtn.frame = CGRectMake(25, [UIScreen mainScreen].bounds.size.height - 120, 46, 46);
                [saveBtn setTitle:@"↓" forState:UIControlStateNormal];
                [saveBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
                saveBtn.font = [UIFont fontWithName:@"HelveticaNeue" size:30];
                saveBtn.layer.cornerRadius = saveBtn.frame.size.width / 2;
                saveBtn.layer.masksToBounds = YES;
                saveBtn.layer.borderWidth = 2;
                [saveBtn.layer setShadowOffset:CGSizeMake(0, -3)];
                [saveBtn.layer setShadowColor:[[UIColor blackColor] CGColor]];
                [saveBtn.layer setShadowOpacity:0.5];
                [saveBtn.layer setShadowRadius:3];

                saveBtn.layer.borderColor = [UIColor whiteColor].CGColor;
             [saveBtn addTarget:self action:@selector(saveImage) forControlEvents:UIControlEventTouchUpInside];
             [self addSubview:saveBtn];
    }

    %new
-(void)saveImage{
        UIImageView *largeImageView = MSHookIvar<UIImageView *>(self, "_largeImageView");
    UIImageView *thumbnailImageView = MSHookIvar<UIImageView *>(self, "_thumbnailImageView");
        UIImage *feedImage = largeImageView.image;
        thumbnailImageView.hidden = YES;
       // UIImageWriteToSavedPhotosAlbum(feedImage, nil, nil, nil);
    }
%end





%hook JDLMainFeedViewController


//NSArray<JDLFeedCellVoteView *> *tcell;
JDLFeedCellVoteView *k10vote;




- (void)viewDidLoad {
    %orig;
//    JDLLoadingTableView *table = self.tableView;
//    [table appendNewButton];
}
%end

//%hook JDLLoadingTableView
//
//UIPanGestureRecognizer *gesture;
//UIButton *up10vBtn;

//%new
//- (void)appendNewButton {
//
////    self.celles10 = self.visibleCells;
//
//    up10vBtn = [[UIButton alloc]init];
//
//
//    [up10vBtn addTarget:self action:@selector(k10upv) forControlEvents:UIControlEventTouchUpInside];
//
//    up10vBtn.frame = CGRectMake(10, 100, 72, 72);
//                [up10vBtn setTitle:@"10" forState:UIControlStateNormal];
//                [up10vBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//                up10vBtn.font = [UIFont fontWithName:@"HelveticaNeue" size:35];
//                up10vBtn.layer.cornerRadius = up10vBtn.frame.size.width / 2;
//                up10vBtn.layer.masksToBounds = YES;
//                up10vBtn.layer.borderWidth = 4;
//                up10vBtn.layer.borderColor = [UIColor whiteColor].CGColor;
//                [up10vBtn.layer setShadowOffset:CGSizeMake(0, -3)];
//                [up10vBtn.layer setShadowColor:[[UIColor blackColor] CGColor]];
//                [up10vBtn.layer setShadowOpacity:0.5];
//                [up10vBtn.layer setShadowRadius:3];
//
//                //self.k10cell = [[_TtC5Jodel15JDLFeedPostCell alloc]init];
//                [self addSubview:up10vBtn];
//
//
//           gesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(pan)];
//            [self addGestureRecognizer:gesture];
//}
//%new
//- (void)pan{
//            CGPoint point = [gesture locationInView:self];
//            up10vBtn.ceUIImagePickerControllerSourceTypePhotoLibraryrControllerSourceTypePhotoLibrary YES;
////    NSArray <JDLFeedPostCell *> *celles10 = self.visibleCells;
////        for (int k = 0; k >= self.celles10.count; k++){
////
////            JDLFeedCellVoteView *c = self.celles10[k].voteView;
////            [c upvoteTap:YES];
////
////        }
//    }


//%end



//%hook JDLFeedCellVoteView
//
//- (void)layoutSubviews {
//    %orig;
//
//    //[self up10v];
//}
//%new
//- (void)up10v{
//
//    for (int i = 0; i < 3; i++){
//        [self[i] upvoteTap:YES];
//    }
//}
//%end
%hook JDLPostDetailsViewController

- (void)viewDidLoad {
    %orig;

//    UIView *v = self.chatboxViewController.view;
//    [v setHidden:NO];
    /*
    _TtC5Jodel21ChatboxViewController *chatboxViewController = MSHookIvar<_TtC5Jodel21ChatboxViewController *>(self,"_chatboxViewController");
    */
   // self.chatboxViewController.view.hidden = false;
    
}
//-(BOOL)isChatboxVisible {
//    return true;
//}

- (void)t2J1B{
    return;
}
%end 


%ctor {
    %init(PasteDisabledTextField = objc_getClass("Jodel.PasteDisabledTextField"),
          PlaceholderTextView = objc_getClass("Jodel.PlaceholderTextView"),
          PictureFeedImageCell = objc_getClass("Jodel.PictureFeedImageCell"),
          JDLFeedCellVoteView = objc_getClass("Jodel.JDLFeedCellVoteView"),
          JDLFeedPostCell = objc_getClass("Jodel.JDLFeedPostCell"));
    

}
//%ctor {
//
//
//    for (int i = 0; i < 10; i++){
//        [JDLFeedCellVoteView[i] upvoteTap:YES];
//
//    }
//    }



