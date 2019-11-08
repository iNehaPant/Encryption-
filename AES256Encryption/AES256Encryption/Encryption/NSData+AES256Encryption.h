//
//  NSData+AES256Encryption.h
//  TestAES
//
//  Created by Neha Pant on 12/10/2019.
//  Copyright © 2019 Neha Pant. All rights reserved.
//


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (AES256Encryption)
//AES 256 Encryption , With ECB Mode
- (NSData *)AES256EncryptWithKey:(NSString *)key;
@end

NS_ASSUME_NONNULL_END
