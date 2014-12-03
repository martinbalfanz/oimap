//
//  configHelper.h
//  oimap
//
//  Created by Martin Balfanz on 02/12/14.
//  Copyright (c) 2014 Martin Balfanz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConfigHelper : NSObject

+ (BOOL)doesConfigFileExist;
+ (NSString *)getConfigPath;
+ (NSDictionary *)getConfig;
+ (void)updateConfig:(NSDictionary *)config;

+ (void)createConfigFile;
+ (NSDictionary *)readConfigFile;
+ (BOOL)saveConfigFile:(NSDictionary *)config;

@end
