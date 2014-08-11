//
//  XFGEngine.m
//  XcodeFileGenerator
//
//  Created by Dalton Claybrook on 8/10/14.
//  Copyright (c) 2014 Space Factory Studios. All rights reserved.
//

#import "XFGEngine.h"
#import "XFGConsoleUtility.h"

@interface XFGEngine ()

@property (nonatomic, copy) NSArray *arguments;

@end

@implementation XFGEngine

#pragma mark - Initializers

- (instancetype)initWithArguments:(NSArray *)arguments
{
    self = [super init];
    if (self)
    {
        _arguments = [arguments copy];
    }
    return self;
}

#pragma mark - Public

- (int)executeWithResultCode
{
    NSString *first = [XFGConsoleUtility promptForTextWithPrompt:@"Enter your first name:"];
    NSString *last = [XFGConsoleUtility promptForTextWithPrompt:@"Enter your last name:"];

    NSString *message = [NSString stringWithFormat:@"Hello, %@ %@.", first, last];
    [XFGConsoleUtility outputMessage:message];
    
    return 0;
}

@end
