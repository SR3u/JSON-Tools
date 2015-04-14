//
//  jsonTools.h
//  JSON Tools
//
//  Created by Sergey Rump on 14.04.15.
//  Copyright (c) 2015 SR3u. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (jsonTools)
-(NSString*) jsonString;
-(NSString*) jsonStringWithPrettyPrint:(BOOL) prettyPrint;//prettyPrint means more human-readable
+(NSDictionary*) dictionaryWithJSONString:(NSString*) jsonString;
+(NSString*) jsonToolsVersion;//returns string with current jsonTools version for this class
@end
@interface NSArray (jsonTools)
-(NSString*) jsonString;
- (NSString *)jsonStringWithPrettyPrint:(BOOL)prettyPrint;//prettyPrint means more human-readable
+(NSArray*) arrayWithJSONString:(NSString*) jsonString;
+(NSString*) jsonToolsVersion;//returns string with current jsonTools version for this class
@end
