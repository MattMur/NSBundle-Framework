//
//  NSBundle+Framework.m
//  NativoSDK
//
//  Created by Matthew Murray on 11/22/16.
//  Copyright © 2016 Nativo, Inc. All rights reserved.
//

#import "NSBundle+Framework.h"

@implementation NSBundle (Framework)

+ (NSBundle *)bundleForFramework:(NSString *)frameworkName {
    static NSBundle* frameworkBundle = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        NSURL *nativoBundleURL = [[NSBundle mainBundle] URLForResource:frameworkName withExtension:@"framework" subdirectory:@"Frameworks"];
        frameworkBundle = [NSBundle bundleWithURL:nativoBundleURL];
    });
    return frameworkBundle;
}

@end
