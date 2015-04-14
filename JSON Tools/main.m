//
//  main.m
//  JSON Tools
//
//  Created by Sergey Rump on 14.04.15.
//  Copyright (c) 2015 SR3u. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "jsonTools/jsonTools.h"

void testNSDictionary(void)
{
    NSLog(@"[NSDictionary jsonToolsVersion]:'%@'",[NSDictionary jsonToolsVersion]);
    NSString* testDictionaryJsonString=@"{\"string\":\"stringValue\",\"bool\":true,\"integer\":100,\"float\":1.5}";
    NSLog(@"testDictionaryJsonString: '%@'",testDictionaryJsonString);
    NSDictionary *d=[NSDictionary dictionaryWithJSONString:testDictionaryJsonString];
    NSLog(@"[NSDictionary dictionaryWithJSONString:testDictionaryJsonString]:\n%@",d);
    NSLog(@"[dictionary jsonStringWithPrettyPrint:YES]:\n%@",[d jsonStringWithPrettyPrint:YES]);
    NSLog(@"[dictionary jsonStringWithPrettyPrint:NO]:\n%@",[d jsonStringWithPrettyPrint:NO]);
    NSLog(@"[dictionary jsonString]:\n%@",[d jsonString]);
}
void testNSArray(NSString* testArrayJsonString)
{
    NSLog(@"testArrayJsonString: '%@'",testArrayJsonString);
    NSArray *a=[NSArray arrayWithJSONString:testArrayJsonString];
    NSLog(@"[NSArray arrayWithJSONString:testArrayJsonString]:\n%@",a);
    NSLog(@"[array jsonStringWithPrettyPrint:YES]:\n%@",[a jsonStringWithPrettyPrint:YES]);
    NSLog(@"[array jsonStringWithPrettyPrint:NO]:\n%@",[a jsonStringWithPrettyPrint:NO]);
    NSLog(@"[array jsonString]:\n%@",[a jsonString]);
}
void testNSArray_all(void)
{
    NSLog(@"[NSArray jsonToolsVersion]:'%@'",[NSArray jsonToolsVersion]);
    testNSArray(@"[0,1,2,3]");
    testNSArray(@"[0.1,1.2,2.3,3.4]");
    testNSArray(@"[false,true,true,false]");
    testNSArray(@"[\"str1\",\"str2\",\"str3\"]");
    testNSArray(@"[0,1,2,3,false,true,true,false,0.1,1.2,2.3,3.4,\"str1\",\"str2\",\"str3\"]");
    testNSArray(@"[0,false,true,1,2,3,true,\"str1\",\"str2\",false,0.1,1.2,\"str3\",2.3,3.4]");
}

int main(int argc, const char * argv[])
{@autoreleasepool{
    // insert code here...
    testNSDictionary();
    testNSArray_all();
    return 0;
}}
