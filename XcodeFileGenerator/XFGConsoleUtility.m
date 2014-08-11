//
//  XFGConsoleUtility.m
//  XcodeFileGenerator
//
//  Created by Dalton Claybrook on 8/10/14.
//  Copyright (c) 2014 Space Factory Studios. All rights reserved.
//

#import "XFGConsoleUtility.h"

@implementation XFGConsoleUtility

+ (NSString *)promptForText
{
    char text[1024] = {0};
    scanf("%s", text);
    
    NSString *textString = [NSString stringWithUTF8String:text];
    return textString;
}

+ (NSString *)promptForTextWithPrompt:(NSString *)prompt
{
    NSLog(@"%@", prompt);
    return [self promptForText];
}

+ (void)outputMessage:(NSString *)message
{
    NSLog(@"%@", message);
}

@end
