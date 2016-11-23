//
//  NSBundle+Framework.h
//  NativoSDK
//
//  Created by Matthew Murray on 11/22/16.
//  Copyright © 2016 Nativo, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSBundle (Framework)

+ (NSBundle *)bundleForFramework:(NSString *)frameworkName;

@end
