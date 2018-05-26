//
//  CommonUtil.m
//  Mp3Encoder
//
//  Created by wenqi on 2018/5/26.
//  Copyright © 2018年 wenqi. All rights reserved.
//

#import "CommonUtil.h"

@implementation CommonUtil

+(NSString *)bundlePath:(NSString *)fileName {
    return [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:fileName];
}

+(NSString *)documentsPath:(NSString *)fileName {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    return [documentsDirectory stringByAppendingPathComponent:fileName];
}

@end
