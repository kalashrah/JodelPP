//
//  imports.h
//  JodelPP
//
//  Created by khalid Alashrah on 02/08/1441 AH.
//

#import <UIKit/UIKit.h>
#import <substrate.h>
#import <objc/runtime.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "CLLocation+LOSPAdditions.h"
#import "CLPlacemark+LOSPAdditions.h"
#import "LOSPLocationDebugViewController.h"
#import "LOSPLocationProvider.h"
#import "LOSPLocationSpoofer.h"
#import "LOSPTrip+LOSPPresets.h"
#import "LOSPTrip.h"
#import "MKCoordinateSpan+LOSPAdditions.h"
#import "LOSPRootViewController.h"
#import "FRPrefs.h"
#import "JodelPPVC.h"
#import "JPPPrefc.h"
#import "k10Manager.h"
#import "stdio.h"

#define JDL10Color [UIColor colorWithRed:1.00 green:0.60 blue:0.03 alpha:1.0]
#define JDL10PPColor [UIColor colorWithRed:0.85 green:0.55 blue:0.17 alpha:1.0]
#define JDL10black [UIColor colorWithRed:0.33 green:0.33 blue:0.33 alpha:1.0]

//@interface JDLFeedImageView : UIImageView
//{
//NSArray *_subviews;
//}
//
//@property (strong, nonatomic) NSArray *subviews;
//
//@end

@interface JDLFeedCellVoteView : UIView

- (void)upvoteTap:(BOOL)arg1;
- (void)up10v;
@end

@interface JDLFeedPostCell : UITableViewCell
{
NSArray *_subviews;
//_TtC5Jodel19JDLFeedCellVoteView *_voteView;
}

@property (strong, nonatomic) NSArray *subviews;
@property (nonatomic) __weak JDLFeedCellVoteView *voteView;

@end






//+ (nonnull NSArray<JDLFeedCellVoteView *> *)tcell;


//@implementation JDLMainFeedViewController
//
//@synthesize tcell = _tcell;
//
//@end

@interface TFNItemsDataViewControllerBackingStore : NSObject
- (void)insertSection:(id)arg1 atIndex:(long long)arg2;
- (void)insertItem:(id)arg1 atIndexPath:(id)arg2;
@end


@interface _TtC5Jodel28JDLUserSectionViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) UIButton *fakeLocationBtn;

-(id)addSectionAtIndex:(unsigned long long)arg1;

@property ( nonatomic, strong) TFNItemsDataViewControllerBackingStore *backingStore;
@property ( nonatomic, strong) NSArray* sections;

@property(nonatomic, strong) UITableView *tableView;
@end

//@interface JDLUserSectionViewController : UIViewController
//
//@property (strong, nonatomic) UIButton *fakeLocationBtn;
//
//-(id)addSectionAtIndex:(unsigned long long)arg1;
//
//@end

@interface JDLImagePreviewViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>


@property(nonatomic) __weak UIImageView *previewImageView;

@end


//@interface PictureFeedImageCell : UICollectionViewCell
//
//
//@property(strong, nonatomic) UIImageView *thumbnailImageView; // @synthesize thumbnailImageView;
//
//@end

@interface nuAvn : UIView

@end

@interface JDLPictureFeedCollectionViewController : UICollectionViewController

//@property(strong, nonatomic) PictureFeedImageCell *pictureFeedImageCell;
@end

@interface JDLFullWidthTableViewCell : UITableViewCell
{
//    CALayer *NAk6NgP_;
}

- (void)setSelected:(_Bool)arg1 animated:(_Bool)arg2;
- (void)prepareForReuse;
- (void)layoutSubviews;
- (void)setM2mpwC:(_Bool)arg1;
- (void)vd7aE;
- (void)awakeFromNib;

@end

@interface k10TableSection : NSObject
-(void)setRows:(id)arg1;
+(id)createCellWithStyle:(NSInteger)style;
@end
@interface k10TableRow : NSObject
-(id)initWithCell:(id)arg1;
-(void)setHandler:(id)arg1;
@end


@interface _TtC5Jodel21ChatboxViewController : UIViewController

@end

@interface JDLPostDetailsViewController : UIViewController

@property(retain, nonatomic) _TtC5Jodel21ChatboxViewController *chatboxViewController;


@end

//{
//    // Error parsing type: , name: tableView
//    // Error parsing type: , name: viewModel
//}
//
//
//- (id)initWithCoder:(id)arg1;
//- (id)initWithNibName:(id)arg1 bundle:(id)arg2;
//- (id)ZLIYViu;
//- (void)aBf;
//- (void)UQ5h6St;
//- (void)moreTap:(id)arg1;
//- (void)dealloc;
//- (void)viewWillAppear:(_Bool)arg1;
//- (void)viewDidLoad;
//@property(nonatomic) __weak UITableView *tableView; // @synthesize tableView;
//
//@end
//

@interface UITableView (_TtC5Jodel28JDLUserSectionViewController)

@property  NSInteger numberOfSections;

@end
@interface SWGPost : NSObject


+ (_Bool)propertyIsOptional:(id)arg1;
+ (id)keyMapper;
@property(retain, nonatomic) NSNumber *recommended; // @synthesize recommended=_recommended;
@property(retain, nonatomic) NSString *pollId; // @synthesize pollId=_pollId;
@property(retain, nonatomic) NSNumber *pollVote; // @synthesize pollVote=_pollVote;
@property(retain, nonatomic) NSArray *pollVotes; // @synthesize pollVotes=_pollVotes;
@property(retain, nonatomic) NSArray *pollOptions; // @synthesize pollOptions=_pollOptions;
@property(retain, nonatomic) NSString *source; // @synthesize source=_source;
@property(retain, nonatomic) NSString *ctaType; // @synthesize ctaType=_ctaType;
@property(retain, nonatomic) NSArray *viewTrackingLinks; // @synthesize viewTrackingLinks=_viewTrackingLinks;
@property(retain, nonatomic) NSArray *clickTrackingLinks; // @synthesize clickTrackingLinks=_clickTrackingLinks;
@property(retain, nonatomic) NSNumber *postblock; // @synthesize postblock=_postblock;
@property(retain, nonatomic) NSString *promotedType; // @synthesize promotedType=_promotedType;
@property(retain, nonatomic) NSString *brandName; // @synthesize brandName=_brandName;
@property(retain, nonatomic) NSString *promotedCta; // @synthesize promotedCta=_promotedCta;
@property(retain, nonatomic) NSString *viewTrackingLink; // @synthesize viewTrackingLink=_viewTrackingLink;
@property(retain, nonatomic) NSString *clickTrackingLink; // @synthesize clickTrackingLink=_clickTrackingLink;
@property(retain, nonatomic) NSString *promotedLink; // @synthesize promotedLink=_promotedLink;
@property(retain, nonatomic) NSNumber *disabledReplies; // @synthesize disabledReplies=_disabledReplies;
@property(retain, nonatomic) NSNumber *wasPromoted; // @synthesize wasPromoted=_wasPromoted;
@property(retain, nonatomic) NSNumber *promoted; // @synthesize promoted=_promoted;
@property(retain, nonatomic) NSNumber *muted; // @synthesize muted=_muted;
@property(retain, nonatomic) NSString *badge; // @synthesize badge=_badge;
@property(retain, nonatomic) NSString *videoUrl; // @synthesize videoUrl=_videoUrl;
@property(retain, nonatomic) NSString *channel; // @synthesize channel=_channel;
@property(retain, nonatomic) NSNumber *viewCount; // @synthesize viewCount=_viewCount;
//@property(retain, nonatomic) NSArray<SWGRange> *highlight; // @synthesize highlight=_highlight;
@property(retain, nonatomic) NSString *replyTimestamp; // @synthesize replyTimestamp=_replyTimestamp;
@property(retain, nonatomic) NSString *parentId; // @synthesize parentId=_parentId;
@property(retain, nonatomic) NSNumber *deleted; // @synthesize deleted=_deleted;
@property(retain, nonatomic) NSNumber *collapse; // @synthesize collapse=_collapse;
@property(retain, nonatomic) NSNumber *_readonly; // @synthesize _readonly=__readonly;
@property(retain, nonatomic) NSNumber *replier; // @synthesize replier=_replier;
@property(retain, nonatomic) NSNumber *shareCount; // @synthesize shareCount=_shareCount;
@property(retain, nonatomic) NSNumber *gotThanks; // @synthesize gotThanks=_gotThanks;
@property(retain, nonatomic) NSNumber *fromHome; // @synthesize fromHome=_fromHome;
@property(retain, nonatomic) NSString *userHandle; // @synthesize userHandle=_userHandle;
@property(retain, nonatomic) NSString *color; // @synthesize color=_color;
//@property(retain, nonatomic) SWGLocation *location; // @synthesize location=_location;
@property(retain, nonatomic) NSString *thumbnailUrl; // @synthesize thumbnailUrl=_thumbnailUrl;
@property(retain, nonatomic) NSString *imageUrl; // @synthesize imageUrl=_imageUrl;
@property(retain, nonatomic) NSNumber *discoveredBy; // @synthesize discoveredBy=_discoveredBy;
@property(retain, nonatomic) NSNumber *discovered; // @synthesize discovered=_discovered;
@property(retain, nonatomic) NSNumber *notificationsEnabled; // @synthesize notificationsEnabled=_notificationsEnabled;
@property(retain, nonatomic) NSNumber *pinCount; // @synthesize pinCount=_pinCount;
@property(retain, nonatomic) NSNumber *pinned; // @synthesize pinned=_pinned;
@property(retain, nonatomic) NSString *voted; // @synthesize voted=_voted;
@property(retain, nonatomic) NSNumber *voteCount; // @synthesize voteCount=_voteCount;
@property(retain, nonatomic) NSNumber *parentCreator; // @synthesize parentCreator=_parentCreator;
@property(retain, nonatomic) NSString *postOwn; // @synthesize postOwn=_postOwn;
@property(retain, nonatomic) NSNumber *preciseDistance; // @synthesize preciseDistance=_preciseDistance;
@property(retain, nonatomic) NSNumber *distance; // @synthesize distance=_distance;
@property(retain, nonatomic) NSString *creator; // @synthesize creator=_creator;
@property(retain, nonatomic) NSNumber *childCount; // @synthesize childCount=_childCount;
//@property(retain, nonatomic) NSArray<SWGPost> *children; // @synthesize children=_children;
@property(retain, nonatomic) NSString *message; // @synthesize message=_message;
@property(retain, nonatomic) NSString *updatedAt; // @synthesize updatedAt=_updatedAt;
@property(retain, nonatomic) NSString *createdAt; // @synthesize createdAt=_createdAt;
@property(retain, nonatomic) NSString *postId; // @synthesize postId=_postId;

- (id)init;
- (id)localizedReplier;
- (_Bool)isParent;
- (_Bool)isPinned;
- (_Bool)isEqual:(id)arg1;
- (void)thank;
- (_Bool)hasPromotedLink;
- (_Bool)isBoostPostThatIsVisibleFullyOnMainFeed;
- (_Bool)isActiveNewStyleBoostPost;
- (_Bool)isPlaceholder;
- (_Bool)isOrWasBoostPost;
- (void)refreshWithVoteCount:(id)arg1 voted:(id)arg2;
- (void)vote:(_Bool)arg1;
- (long long)votingState;
- (long long)contentType;
- (id)createdAtDate;
- (id)createdAtShort;
- (_Bool)canShowHomeLocation;
- (_Bool)isMyJodel;
- (id)pollVotedOption;
- (void)refreshPollWithVote:(id)arg1 votes:(id)arg2;
- (id)pollExpirationDate;
- (_Bool)isPollExpired;
- (_Bool)isPoll;

@end



@protocol JDLFeedCellViewModelProtocol;
@interface JDLBasePostCellViewModel : NSObject <JDLFeedCellViewModelProtocol>


//@property(retain, nonatomic) RACSubject *highligtingSignal; // @synthesize highligtingSignal=_highligtingSignal;
@property(retain, nonatomic) NSAttributedString *attributedPromotedLink; // @synthesize attributedPromotedLink=_attributedPromotedLink;
@property(retain, nonatomic) NSAttributedString *attributedText; // @synthesize attributedText=_attributedText;

@property(nonatomic) _Bool isRecommended; // @synthesize isRecommended=_isRecommended;
@property(nonatomic) _Bool initiallyCollapsedByOjFilter; // @synthesize initiallyCollapsedByOjFilter=_initiallyCollapsedByOjFilter;
@property(nonatomic) _Bool expanded; // @synthesize expanded=_expanded;
@property(nonatomic) _Bool isPinned; // @synthesize isPinned=_isPinned;
@property(nonatomic) _Bool isFirstPost; // @synthesize isFirstPost=_isFirstPost;
@property(readonly, nonatomic) long long cellStyleType; // @synthesize cellStyleType=_cellStyleType;
@property(retain, nonatomic) UIColor *postColor; // @synthesize postColor=_postColor;
@property(nonatomic) _Bool showThankedIcon; // @synthesize showThankedIcon=_showThankedIcon;
@property(nonatomic) _Bool showThankJodlerHeart; // @synthesize showThankJodlerHeart=_showThankJodlerHeart;
@property(nonatomic) unsigned long long cellType; // @synthesize cellType=_cellType;
@property(retain, nonatomic) SWGPost *post; // @synthesize post=_post;

@property(readonly, nonatomic) _Bool shouldShowBannedPopup;
- (void)emitShowMoreProminentPopupSignal;
- (_Bool)shouldShowMoreProminentPopup;
- (_Bool)hideActionButton;
@property(readonly) _Bool hasPossibilityToThank;
- (_Bool)shouldEnableSourceChannelTap;
- (_Bool)shouldShowReport;
- (_Bool)showMuteHintOnDownvote;
- (void)togglePinStatus;
- (_Bool)isThankedPost;
- (_Bool)isImageOrVideoPost;
- (void)didSelect;
- (id)cellId;
- (_Bool)isVotingEnabled;
- (_Bool)shouldEnableVoting;
- (_Bool)shouldShowLinks;
- (_Bool)isCellTypeOptionSet:(unsigned long long)arg1;
@property(readonly) _Bool shouldApplyNonActivelyEngagedMode;
- (_Bool)shouldAllowForInteractionOfActionButton;
- (_Bool)shouldAllowForInteraction;
- (_Bool)shouldApplyReadonlyStyleForVoteView;
- (_Bool)shouldApplyReadonlyStyleFor3DotMenu;
- (_Bool)shouldApplyReadonlyStyle;
- (_Bool)isPictureFeedEnabled;
- (_Bool)shouldUseLightColor;
- (_Bool)shouldUseBoldFont;
- (_Bool)shouldShowMarkedRepliers;
- (_Bool)shouldShowChannels;
- (_Bool)shouldShowHashtags;
- (id)getMarkReplierNumber;
- (_Bool)shouldShowOpBar;
- (_Bool)shouldShowReplierBar;
- (_Bool)shouldShowReplierMark;
- (_Bool)shouldShowOPMarking;
- (_Bool)shouldShowSeparatorLine;
- (void)showReport;
- (void)showAvailableActions;
- (void)openImagePreview:(id)arg1;
- (void)openFilterIfPossible;
- (void)openURL:(id)arg1;
- (void)openMentionedReplier:(id)arg1;
- (void)openChannel:(id)arg1;
- (void)openHashtag:(id)arg1;
@property(readonly) _Bool hasPossibilityToVote;
- (void)refreshWithPollVote:(id)arg1 pollVotes:(id)arg2;
- (void)refreshWithVoteCount:(id)arg1 voted:(id)arg2;
- (void)tryingToVote:(_Bool)arg1;

@property(readonly) long long votingState;
@property(readonly) long long voteCount;
- (long long)cellStyle;
- (void)giveThanks;
@property(readonly, nonatomic) NSString *text;
- (void)resetCachedAttributedText;
- (unsigned long long)getCollapsedState;
- (_Bool)collapsed;
- (id)promotedLink;
- (id)promotedCta;
- (void)setup;
- (id)initWithPost:(id)arg1 parent:(id)arg2 cellStyleType:(long long)arg3;

// Remaining properties
@property(readonly, copy) NSString *debugDescription;
@property(readonly, copy) NSString *description;
@property(readonly) unsigned long long hash;
@property(readonly) Class superclass;

@end

@protocol JDLFeedCellViewModelProtocol <NSObject>
- (long long)cellStyle;
- (unsigned long long)getCollapsedState;
- (void)didSelect;
- (NSString *)cellId;

@optional
- (void)openURL:(NSURL *)arg1;
- (void)openMentionedReplier:(NSString *)arg1;
- (void)openChannel:(NSString *)arg1;
- (void)openHashtag:(NSString *)arg1;
@end
@protocol JDLImageContentModelProtocol;

@interface JDLFeedImageView : UIImageView


@property(nonatomic) __weak id <JDLImageContentModelProtocol> model; // @synthesize model=GLVkDbxe;
@property(retain, nonatomic) UILongPressGestureRecognizer *XrSmEgt; // @synthesize XrSmEgt=fxx;
@property(copy, nonatomic) NSString *hiPpxo; // @synthesize hiPpxo=KxYP;
@property(nonatomic) _Bool QvcknWa; // @synthesize QvcknWa=kVIkvF;
@property(nonatomic) long long DGuQFZ5J; // @synthesize DGuQFZ5J=bsHUoh;

- (void)swQAuvM;
- (id)tGq9hG;
- (void)BN_HK;
- (void)a2nG;
- (void)Knnt1C8;
- (void)openImagePreview:(id)arg1;
- (void)j0kRmTc;
- (void)etphXpTM;
- (void)Q9BxPx;
- (void)x_mtS;
- (void)awakeFromNib;

@end

@interface JDLFeedPostImageCell : UITableViewCell
@property(nonatomic) __weak JDLFeedImageView *jodelImageView;
@end

//@interface SWGPost : SWGObject
@interface JDLLoadingTableView : UITableView

@property (nonatomic, strong) NSArray<JDLFeedPostCell *> *celles10;
- (void)appendNewButton;
- (void)k10up10vv;
@end

@interface JDLMainFeedViewController :UIViewController

@property(nonatomic, strong) JDLLoadingTableView *tableView;
@property UIButton *up10vBtn;
@property UIPanGestureRecognizer *gesture;
@property (nonatomic) __weak JDLFeedPostCell *k10cell;
@property (nonatomic, nonnull, readonly) NSArray<JDLFeedCellVoteView *> *tcell;
//-(void)k10up10vv;
@end

@interface _TtC5Jodel26ImagePreviewViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>


@property(strong, nonatomic) UIImageView *previewImageView;

@property(strong, nonatomic) UIButton *savePictureButton;

-(void)savePictureTap:(id)arg1;
-(void)upload;
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info;
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker;
@end

@interface JDLImageCaptureViewController : UIViewController


@property(nonatomic) double maxVideoLengthSec;

@end
