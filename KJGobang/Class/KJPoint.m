//
//  KJPoint.m
//  KJGobang
//
//  Created by TigerHu on 2024/8/21.
//

#import "KJPoint.h"

@implementation KJPoint

- (id)initPointWith:(NSInteger)x y:(NSInteger)y {
    
    self = [self init];
    if (self) {
        self.x = x;
        self.y = y;
    }
    return self;
}

- (id)init {
    
    self = [super init];
    if (self) {
        self.x = -1;
        self.y = -1;
    }
    
    return self;
}

@end

