//
//  VideoCell.h
//  YouPlay
//
//  Created by Evgeny Shkuratov on 12/15/16.
//  Copyright © 2016 Evgeny Shkuratov. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Video;

@interface VideoCell : UITableViewCell

-(void)updateUI:(nonnull Video*)video;

@end
