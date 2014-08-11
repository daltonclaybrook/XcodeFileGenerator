//
//  main.m
//  XcodeFileGenerator
//
//  Created by Dalton Claybrook on 8/10/14.
//  Copyright (c) 2014 Space Factory Studios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XFGEngine.h"

int main(int argc, const char * argv[])
{
    int result = 0;
    @autoreleasepool {
        
        NSMutableArray *arguments = [NSMutableArray arrayWithCapacity:argc];
        for (int i=0; i<argc; i++)
        {
            const char *arg = argv[i];
            NSString *argString = [NSString stringWithUTF8String:arg];
            [arguments addObject:argString];
        }
        
        XFGEngine *engine = [[XFGEngine alloc] initWithArguments:arguments];
        result = [engine executeWithResultCode];
    }
    return result;
}