//
//  UserInfo.m
//  TYLM
//
//  Created by zw on 16/9/28.
//  Copyright © 2016年 dw962666721. All rights reserved.
//

#import "UserInfo.h"

@implementation UserInfo
-(UserInfo)userInfo
{
    if (!self.userInfo) {
        self.userInfo = [[UserInfo alloc] init];
    }
    return self.userInfo;
}
// 设置用户名
-(void)setUseName:(NSString *)useName
{
    self.userInfo.useName = useName;
}
// 设置密码
-(void)setPassWord:(NSString *)passWord
{
    self.userInfo.passWord = passWord;
}
// 设置用户数据
-(void)setUserDict:(NSDictionary *)userDict
{
    self.userInfo.userDict=userDict;
    [[NSUserDefaults standardUserDefaults] addObserver:userDict forKeyPath:@"TYLM" options:nil context:nil];
}
// 获取用户数据
-(NSDictionary*)getUserDict
{
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"TYLM"];
}
@end
