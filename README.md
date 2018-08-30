# WJXKeychainItemWrapper

## 介绍
    苹果demo的KeychainItemWrapper,只是为了便于自己使用.不用拖文件.

## 版本
    1.1.1

## 引用cocopods

    source 'https://github.com/wangjixiao1992/WJXKeychainItemWrapper.git'
    platform :ios, '8.0'

    target 'TargetName' do
    pod 'WJXKeychainItemWrapper', '~> 1.1.1'
    end

## 演示代码
```swift

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
```

## 联系我们
如有疑问请发送邮件.谢谢~
15037535383@163.com




  
