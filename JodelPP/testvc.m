//
//  testvc.m
//  JodelPP
//
//  Created by khalid Alashrah on 02/08/1441 AH.
//

#import "testvc.h"


//@interface UITableView (testvc)
//
//
//@property (nonatomic, readonly) NSArray<__kindof _TtC5Jodel15JDLFeedPostCell *> *visibleCells;
//
//@end

@interface testvc ()



@end




#define xF k10btn.frame.origin.x
#define yF k10btn.frame.origin.y
@implementation testvc


//- (void)a333aa{
// 
//    JDLFeedCellVoteView *k10vote = self.k10cell.voteView;
//    [k10vote upvoteTap:YES];
//    
//}
//- (void)k10up10vv{
//    
//    
//    NSArray<_TtC5Jodel15JDLFeedPostCell *> *celles10 = self.tableView.visibleCells;
//        for (int k = 0; k >= celles10.count; k++){
//               
//            [celles10[k].voteView upvoteTap:YES];
//    
//               }
//    
//    //[k10vote upvoteTap:YES];
//    //[self.vote up10v];
//    
//    //NSArray *vote = objc_getClass("Jodel.JDLFeedCellVoteView");
//    //tcell = [[NSArray alloc]init];
//    
//
//        
//    }
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UIBarButtonItem *heart = [[UIBarButtonItem alloc]initWithImage:[UIImage systemImageNamed:@"slowmo"] style:UIBarButtonItemStylePlain target:self action:@selector(shareTapped:)];
    
    self.navigationItem.rightBarButtonItem = heart;
    
    //[[k10Manager alloc]init];
//    FRPSection *JodelPPSection = [self addSectionAtIndex:1];
    //self.k10cell = [[_TtC5Jodel15JDLFeedPostCell alloc]init];
    
//    self.fakeLocationBtn = [[UIButton alloc]init];
//    [self.fakeLocationBtn setTitle:@"_!_" forState:UIControlStateNormal];
//    [self.fakeLocationBtn setFrame:CGRectMake(self.view.frame.size.height /2, , 48, 48)];
    
//     JPPPrefc *prefc = [[JPPPrefc alloc]init];
//    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:prefc];
//    [self presentViewController:nav animated:YES completion:nil];
    UIButton *k10btn = [[UIButton alloc]init];
    [k10btn setFrame:CGRectMake(10, 0.5, 48, 48)];
    [k10btn addTarget:self action:@selector(JodelPPPreset) forControlEvents:UIControlEventTouchUpInside];
    k10btn.layer.cornerRadius = k10btn.frame.size.height;
    k10btn.layer.masksToBounds = YES;
    k10btn.layer.borderWidth = 2;
    k10btn.layer.shadowOffset = CGSizeMake(1, 1);
    k10btn.layer.shadowColor = [UIColor blueColor].CGColor;
    k10btn.layer.borderColor = [UIColor whiteColor].CGColor;
//    
//    UILabel *lable = [[UILabel alloc]init];
//    [lable setText:@"+"];
//    [lable setTextAlignment:NSTextAlignmentCenter];
//    [lable setFrame:k10btn.frame];
//    [lable setTextColor:[UIColor whiteColor]];
//    [lable setFont:[UIFont fontWithName:@"HelveticaNeue-UltraLight" size:40]]
//    
//
//    [self.view addSubview:k10btn];
//    [self.view addSubview:lable];
    
//    k10TableSection *newSec = [self addSectionAtIndex:1];
//    k10TableRow *newRow = [[k10TableRow alloc]init];
//    UITableViewCell *Cell = [[UITableViewCell alloc]init];
//    [Cell.textLabel setText:@"JodelPP"];
//    //Cell.imageView.image
//    [Cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
//    [newRow setHandler:^{ exit(0); }];
//    
//    [newRow initWithCell:Cell];
//    [newSec setRows:@[newRow]];
    
    UIButton *newStickersBtn = [[UIButton alloc]init];
    newStickersBtn.frame = CGRectMake(20, [UIScreen mainScreen].bounds.size.height - 110, 36, 36);
    [newStickersBtn setImage:[UIImage imageNamed:@"previewStickers"] forState:UIControlStateNormal];
//    newStickersBtn
    [newStickersBtn addTarget:self action:@selector(onStickersTap:) forControlEvents:UIControlEventTouchUpInside];
    
    
//    JDLLoadingTableView *table = self.tableView;
//    [table appendNewButton];
}



@end
