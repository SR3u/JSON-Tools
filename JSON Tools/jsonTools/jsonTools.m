//
//  Tools.m
//  Dress
//
//  Created by Sergey Rump on 14.04.15.
//  Copyright (c) 2015 SR3u. All rights reserved.
//

#import "jsonTools.h"

@implementation NSDictionary (JSONString)
-(NSString*) jsonString{return [self jsonStringWithPrettyPrint:NO];}
-(NSString*) jsonStringWithPrettyPrint:(BOOL) prettyPrint
{
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:(NSJSONWritingOptions)    (prettyPrint ? NSJSONWritingPrettyPrinted : 0)
                                                         error:&error];
    if (! jsonData)
    {
        NSLog(@"jsonStringWithPrettyPrint: error: %@", error.localizedDescription);
        return @"{}";
    }
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}
+(NSDictionary*) dictionaryWithJSONString:(NSString*) jsonString
{
    NSError* error;
    NSDictionary* res=[NSJSONSerialization JSONObjectWithData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]
                                                     options:0
                                                       error:&error];
    if (error!=nil)
    {
        NSLog(@"dictionaryWithJSONString: error: %@", error.localizedDescription);
        return nil;
    }
    return res;
}
@end

@implementation NSArray (JSONString)
-(NSString*) jsonString{return [self jsonStringWithPrettyPrint:NO];}
-(NSString*) jsonStringWithPrettyPrint:(BOOL) prettyPrint
{
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:(NSJSONWritingOptions) (prettyPrint ? NSJSONWritingPrettyPrinted : 0)
                                                         error:&error];
    if (! jsonData)
    {
        NSLog(@"jsonStringWithPrettyPrint: error: %@", error.localizedDescription);
        return @"[]";
    }
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}
+(NSArray*) arrayWithJSONString:(NSString*) jsonString
{
    NSError* error;
    NSArray* res=[NSJSONSerialization JSONObjectWithData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]
                                                 options:0
                                                   error:&error];
    if (error!=nil)
    {
        NSLog(@"arrayWithJSONString: error: %@", error.localizedDescription);
        return nil;
    }
    return res;
}
@end
