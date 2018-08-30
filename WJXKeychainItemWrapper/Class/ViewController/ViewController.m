//
//  ViewController.m
//  maskView
//
//  Created by wangjixiao on 2018/8/29.
//  Copyright © 2018年 王吉笑. All rights reserved.
//

#import "ViewController.h"
#import "WJXKeychainItemWrapper.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
  
    
}


+ (NSString *)getUUID
{
    static WJXKeychainItemWrapper *keychain = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        keychain = [[WJXKeychainItemWrapper alloc] initWithIdentifier:@"MAUUID"
                                                          accessGroup:nil];
    });
    NSString *UUID = [keychain objectForKey:@"UUID"];
    if (UUID.length > 0) {
        return UUID;
    } else {
        CFUUIDRef puuid = CFUUIDCreate( nil );
        CFStringRef uuidString = CFUUIDCreateString( nil, puuid );
        NSString * result = (NSString *)CFBridgingRelease(CFStringCreateCopy( NULL, uuidString));
        CFRelease(puuid);
        CFRelease(uuidString);
        [keychain setObject:result forKey:@"UUID"];
        return result;
    }
    return UUID;
}

@end
