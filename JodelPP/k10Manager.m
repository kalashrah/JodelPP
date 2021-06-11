//
//  k10Manager.m
//  JodelPP
//
//  Created by khalid Alashrah on 10/01/1442 AH.
//

#import "k10Manager.h"

@implementation k10Manager


+ (void)DownloadVideoWithURL:(NSString *)url completionHandler:(void (^)(NSURL *filePath, NSError *error))completionHandler {
    NSError *err;
    NSString *documentsDirectoryURL = [NSString stringWithFormat:@"%@/%@", NSHomeDirectory(), @"Documents"];
    NSURL *fileURL = [NSURL URLWithString:url];
    NSString *fileName = fileURL.lastPathComponent;
    NSString *downloadPath = [documentsDirectoryURL stringByAppendingPathComponent:fileName];
    NSURL *downloadPathURL = [NSURL fileURLWithPath:downloadPath];
    
    NSData *dataFile = [NSData dataWithContentsOfURL:fileURL];
    if (dataFile) {
        [dataFile writeToFile:downloadPath options:nil error:&err];
    }
    
    completionHandler(downloadPathURL, err);
}
//+ (BOOL)isVideoCell:(_TtC5Jodel15JDLFeedPostCell *)cell {
//    TFSTwitterEntityMedia *i = cell.viewModel.entities.media.firstObject;
//    if (i.videoInfo == nil) {
//        return false;
//    } else {
//        return true;
//    }
//}


@end
