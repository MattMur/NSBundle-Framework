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
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSURL *nativoBundleURL = [mainBundle URLForResource:frameworkName withExtension:@"framework" subdirectory:@"Frameworks"];
    return [NSBundle bundleWithURL:nativoBundleURL];
}

@end
