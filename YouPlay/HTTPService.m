//
//  HTTPService.m
//  YouPlay
//
//  Created by Evgeny Shkuratov on 12/14/16.
//  Copyright © 2016 Evgeny Shkuratov. All rights reserved.
//

#import "HTTPService.h"

#define URL_BASE "http://localhost:6069"
#define URL_VIDEOS "/videos"

@implementation HTTPService

+ (id) instance {
    static HTTPService *sharedInstance = nil;
    
    @synchronized (self) {
        if (sharedInstance == nil)
            sharedInstance = [[self alloc] init];
    }
    return sharedInstance;
}

- (void) getVideos:(nullable onComplete)completionHandler {
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%s%s", URL_BASE, URL_VIDEOS]];
    NSURLSession *session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (data != nil) {
            NSError *err;
            NSArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&err];
            
            if (err == nil) {
                completionHandler(json, nil);
            } else {
                completionHandler(nil, @"Data is corrupt. Please try again");
            }
        } else {
            NSLog(@"Network Error: %@", error.debugDescription);
            completionHandler(nil, @"Problem connecting to the server");
        }
        
    }] resume];
}

@end
