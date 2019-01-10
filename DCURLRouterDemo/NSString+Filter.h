//
//  NSString+Filter.h
//  DCURLRouterDemo
//
//  Created by Gome on 2019/1/10.
//  Copyright © 2019年 Gome. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Filter)

/**
 *  截取URL中的参数
 *
 *  @return NSMutableDictionary parameters
 */
- (NSMutableDictionary *)getURLParameters;

@end
