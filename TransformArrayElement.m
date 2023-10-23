//
//  TransformArrayElement.m
//  Swift_ObjC_Portability
//
//  Created by Atmaja on 22/10/23.
//  Copyright © 2023 Atmaja. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TransformArrayElement.h"

@implementation TransformArrayElement
- (NSMutableArray *) transFormElements:(float []) inputArray {
    
    NSMutableArray *doubledArray = [[NSMutableArray alloc] initWithCapacity:0];
    for (int i = 0; i< ((NSUInteger)(sizeof(inputArray))); i++)
    {
        [doubledArray addObject:[NSNumber numberWithFloat:(inputArray[i] * 2.0)] ];
        
    }
    return doubledArray;
}


@end
