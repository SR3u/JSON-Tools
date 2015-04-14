//
//  Tools.h
//  Dress
//
//  Created by Sergey Rump on 14.04.15.
//  Copyright (c) 2015 SR3u. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (jsonTools)
+(NSString*) jsonToolsVersion;
-(NSString*) jsonString;
-(NSString*) jsonStringWithPrettyPrint:(BOOL) prettyPrint;
+(NSDictionary*) dictionaryWithJSONString:(NSString*) jsonString;
@end
@interface NSArray (jsonTools)
+(NSString*) jsonToolsVersion;
-(NSString*) jsonString;
- (NSString *)jsonStringWithPrettyPrint:(BOOL)prettyPrint;
+(NSArray*) arrayWithJSONString:(NSString*) jsonString;
@end
