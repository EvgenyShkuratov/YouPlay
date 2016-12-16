//
//  Video.h
//  YouPlay
//
//  Created by Evgeny Shkuratov on 12/15/16.
//  Copyright © 2016 Evgeny Shkuratov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Video : NSObject

@property(nonatomic, strong) NSString *videoTitle;
@property(nonatomic, strong) NSString *videoDescription;
@property(nonatomic, strong) NSString *videoIframe;
@property(nonatomic, strong) NSString *thumbNailUrl;

@end
