//
//  QENormalView.m
//  QuantumEntanglement
//
//  Created by Daniel Blakemore on 9/23/14.
//  Copyright (c) 2014 Pixio. All rights reserved.
//

#import "QENormalView.h"

@implementation QENormalView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self == nil)
        return nil;
    
    [self setBackgroundColor:[UIColor whiteColor]];
    
    _normalField = [[UITextField alloc] init];
    [_normalField setPlaceholder:@"This is a normal textField"];
    [_normalField setTextAlignment:NSTextAlignmentCenter];
    [_normalField setFont:[UIFont boldSystemFontOfSize:18.0f]];
    [_normalField setTranslatesAutoresizingMaskIntoConstraints:FALSE];
    [[_normalField layer] setBorderColor:[[UIColor grayColor] CGColor]];
    [[_normalField layer] setBorderWidth:0.5f];
    [self addSubview:_normalField];
    
    NSDictionary* views = NSDictionaryOfVariableBindings(_normalField);
    NSDictionary* metrics = @{@"sp" : @5};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-sp-[_normalField]-sp-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-sp-[_normalField]" options:0 metrics:metrics views:views]];
    
    return self;
}

@end
