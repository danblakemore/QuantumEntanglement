//
//  QEStrangeView.m
//  QuantumEntanglement
//
//  Created by Daniel Blakemore on 9/23/14.
//  Copyright (c) 2014 Pixio. All rights reserved.
//

#import "QEStrangeView.h"

@implementation QEStrangeView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self == nil)
        return nil;
    
    [self setBackgroundColor:[UIColor whiteColor]];
    
    _strangeField = [[UITextField alloc] init];
    [_strangeField setPlaceholder:@"This is a tall textField"];
    [_strangeField setTextAlignment:NSTextAlignmentCenter];
    [_strangeField setFont:[UIFont boldSystemFontOfSize:18.0f]];
    [_strangeField setTranslatesAutoresizingMaskIntoConstraints:FALSE];
    [[_strangeField layer] setBorderColor:[[UIColor grayColor] CGColor]];
    [[_strangeField layer] setBorderWidth:0.5f];
    [self addSubview:_strangeField];
    
    NSDictionary* views = NSDictionaryOfVariableBindings(_strangeField);
    NSDictionary* metrics = @{@"sp" : @5};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-sp-[_strangeField]-sp-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-sp-[_strangeField]-sp-|" options:0 metrics:metrics views:views]];
    
    return self;
}

@end
