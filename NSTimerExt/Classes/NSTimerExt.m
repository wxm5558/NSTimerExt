//
//  NSTimerExt.m
//  NSTimerExt
//
//  Created by wang xiaoman on 2023/3/28.
//

#import "NSTimerExt.h"

@implementation NSTimerExt
+(id)scheduledTimerWithTimeInterval:(NSTimeInterval)timeInterval block:(void (^)())block repeats:(BOOL)repeats
{
    void (^cpblock)() = [block copy];
    id ret = [self scheduledTimerWithTimeInterval:timeInterval target:self selector:@selector(executeSimpleBlock:) userInfo:cpblock repeats:repeats];
    return ret;
}

+(id)timerWithTimeInterval:(NSTimeInterval)timeInterval block:(void (^)())block repeats:(BOOL)repeats
{
    void (^cpblock)() = [block copy];
    id ret = [self timerWithTimeInterval:timeInterval target:self selector:@selector(executeSimpleBlock:) userInfo:cpblock repeats:repeats];
    return ret;
}

+(void)executeSimpleBlock:(NSTimer *)timer;
{
    if([timer userInfo])
    {
        void (^block)() = (void (^)())[timer userInfo];
        block();
    }
}
@end
