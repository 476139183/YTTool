//
//  Foundation+YTLog.m
//  打印日志
//
//  Created by Yutian Duan on 15/7/13.
//  Copyright (c) 2018年 Wanwin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@implementation UIView(Log)

+ (NSString *)searchAllSubviews:(UIView *)superview {
  
  NSMutableString *xml = [NSMutableString string];
  
  NSString *class = NSStringFromClass(superview.class);
  
  class = [class stringByReplacingOccurrencesOfString:@"_" withString:@""];
  
  [xml appendFormat:@"<%@ frame=\"%@\">\n", class,NSStringFromCGRect(superview.frame)];
  
  for (UIView *childView in superview.subviews) {
    NSString *subviewXml = [self searchAllSubviews:childView];
    [xml appendString:subviewXml];
  }
  
  [xml appendFormat:@"</%@>\n", class];
  return xml;
  
}

- (NSString *)description {
  return [UIView searchAllSubviews:self];
}

@end


@implementation NSDictionary (Log)

- (NSString *)descriptionWithLocale:(id)locale {
  
  NSMutableString *string = [NSMutableString string];
  
  // 开头有个{
  [string appendString:@"{\n"];
  
  // 遍历所有的键值对
  [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
    [string appendFormat:@"\t%@ : %@,\n", key, obj];
  }];
  
  // 结尾有个}
  [string appendString:@"}"];
  
  // 查找最后一个逗号的范围,删除最后一个
  NSRange range = [string rangeOfString:@"," options:NSBackwardsSearch];
  if (range.location != NSNotFound) {
    [string deleteCharactersInRange:range];
  }
  
  return string;
}

@end

@implementation NSArray (Log)

- (NSString *)descriptionWithLocale:(id)locale {
  
  NSMutableString *string = [NSMutableString string];
  
  // 开头有个[
  [string appendString:@"[\n"];
    
  // 遍历所有的元素
  [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [string appendFormat:@"\t%@,\n", obj];
  }];

  
  // 结尾有个]
  [string appendString:@"]"];
    
  // 查找最后一个逗号
  NSRange range = [string rangeOfString:@"," options:NSBackwardsSearch];
  
  if (range.location != NSNotFound) {
    [string deleteCharactersInRange:range];
  }
  
  return string;
}

@end
