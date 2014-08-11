//
//  XFGConsoleUtility.h
//  XcodeFileGenerator
//
//  Created by Dalton Claybrook on 8/10/14.
//  Copyright (c) 2014 Space Factory Studios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XFGConsoleUtility : NSObject

+ (NSString *)promptForText;
+ (NSString *)promptForTextWithPrompt:(NSString *)prompt;
+ (void)outputMessage:(NSString *)message;

@end
