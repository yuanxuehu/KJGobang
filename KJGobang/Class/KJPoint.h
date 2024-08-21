//
//  KJPoint.h
//  KJGobang
//
//  Created by TigerHu on 2024/8/21.
//

// 只有两个整数属性的point
#import <Foundation/Foundation.h>

@interface KJPoint : NSObject

@property (nonatomic, assign) NSInteger x;
@property (nonatomic, assign) NSInteger y;

- (id)initPointWith:(NSInteger)x y:(NSInteger)y;

@end
