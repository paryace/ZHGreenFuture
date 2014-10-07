//
//  UIImageView+ZHiteam.m
//  ZHGreenFuture
//
//  Created by elvis on 9/2/14.
//  Copyright (c) 2014 ZHiteam. All rights reserved.
//

#import "UIImageView+ZHiteam.h"

#import "UIImageView+WebCache.h"

@implementation UIImageView (ZHiteam)



-(void)setImageWithUrlString:(NSString*)url placeHodlerImage:(UIImage*)image{
    [self startAnimating];
    __block UIImageView* imageView = self;
        NSURL *encodedString = [url greenFutureURL];
//    NSURL *encodedString = [NSURL URLWithString:url];

    [self setImageWithURL:encodedString placeholderImage:image completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType) {
        [imageView stopLoading];
//        imageView.alpha = 0.0f;
//        [[imageView viewWithTag:-10024]removeFromSuperview];
//        [UIView animateWithDuration:ANIMATE_DURATION animations:^{
//            imageView.alpha = 1.0f;
//        }];
    }];
}
@end
