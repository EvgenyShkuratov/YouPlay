//
//  HTTPService.h
//  YouPlay
//
//  Created by Evgeny Shkuratov on 12/14/16.
//  Copyright © 2016 Evgeny Shkuratov. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^onComplete)(NSArray * __nullable dataArray, NSString * __nullable errMessage);

@interface HTTPService : NSObject

+ (id) instance;
- (void) getVideos:(nullable onComplete)completionHandler;

@end
