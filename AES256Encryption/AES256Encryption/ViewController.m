//
//  ViewController.m
//  AES256Encryption
//
//  Created by Neha Pant on 14/10/2019.
//  Copyright © 2019 Neha Pant. All rights reserved.
//

#import "ViewController.h"
#import "NSData+AES256Encryption.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString* identifier = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    NSLog(@"UUID - %@", identifier);
    NSData *data = [identifier dataUsingEncoding:NSUTF8StringEncoding];
    NSData *encodeData = [data AES256EncryptWithKey:@"12345678901234567890123456789012"];
    NSString *encodedString = [encodeData base64EncodedStringWithOptions:0];
    NSLog(@"value of encrypted string - %@",encodedString);
}


@end
