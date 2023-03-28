//
//  NSTimerExt.h
//  NSTimerExt
//
//  Created by wang xiaoman on 2023/3/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTimerExt : NSTimer
+(id)scheduledTimerWithTimeInterval:(NSTimeInterval)timeInterval block:(void (^)())block repeats:(BOOL)repeats;
+(id)timerWithTimeInterval:(NSTimeInterval)timeInterval block:(void (^)())block repeats:(BOOL)repeats;
@end

NS_ASSUME_NONNULL_END
