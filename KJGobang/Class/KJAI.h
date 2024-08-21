//
//  KJAI.h
//  KJGobang
//
//  Created by TigerHu on 2024/8/21.
//

#import <Foundation/Foundation.h>
#import "KJPoint.h"

// 枚举棋盘落子类型
typedef NS_ENUM(NSInteger, OccupyType) {
    OccupyTypeEmpty = 0,// 空点
    OccupyTypeUser,     // 用户点
    OccupyTypeAI,       // AI点
    OccupyTypeUnknown,  // 未知点
};

@interface KJPointData : NSObject

@property (nonatomic, strong) KJPoint *p;
@property (nonatomic, assign) int count;

- (id)initWithPoint:(KJPoint *)point count:(int)count;

@end

@interface KJOmni : NSObject

@property (nonatomic, strong) NSMutableArray *curBoard;
@property (nonatomic, assign) OccupyType oppoType;
@property (nonatomic, assign) OccupyType myType;

- (id)initWithArr:(NSMutableArray *)arr opp:(OccupyType)opp my:(OccupyType)my;
- (BOOL)isStepEmergent:(KJPoint *)pp Num:(int)num type:(OccupyType)xType;

@end

@interface KJAI : NSObject

+ (KJPoint *)geablog:(NSMutableArray *)board type:(OccupyType)type;
+ (KJPoint *)SeraphTheGreat:(NSMutableArray *)board type:(OccupyType)type;

@end

