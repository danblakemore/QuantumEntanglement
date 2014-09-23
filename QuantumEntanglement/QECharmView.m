//
//  QECharmView.m
//  QuantumEntanglement
//
//  Created by Daniel Blakemore on 9/23/14.
//  Copyright (c) 2014 Pixio. All rights reserved.
//

#import "QECharmView.h"

@implementation QECharmView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self == nil)
        return nil;
    
    [self setBackgroundColor:[UIColor whiteColor]];
    
    _charmField = [[UITextField alloc] init];
    [_charmField setPlaceholder:@"Placeholder"];
    [_charmField setText:@"Not Centered Right"];
    [_charmField setTextAlignment:NSTextAlignmentCenter];
    [_charmField setFont:[UIFont boldSystemFontOfSize:18.0f]];
    [_charmField setTranslatesAutoresizingMaskIntoConstraints:FALSE];
    [[_charmField layer] setBorderColor:[[UIColor grayColor] CGColor]];
    [[_charmField layer] setBorderWidth:0.5f];
    [self addSubview:_charmField];
    
    _secureField = [[UITextField alloc] init];
    [_secureField setSecureTextEntry:TRUE];
    [_secureField setTextAlignment:NSTextAlignmentCenter];
    [_secureField setFont:[UIFont boldSystemFontOfSize:18.0f]];
    [_secureField setTranslatesAutoresizingMaskIntoConstraints:FALSE];
    [[_secureField layer] setBorderColor:[[UIColor grayColor] CGColor]];
    [[_secureField layer] setBorderWidth:0.5f];
    [self addSubview:_secureField];
    
    NSDictionary* views = NSDictionaryOfVariableBindings(_charmField, _secureField);
    NSDictionary* metrics = @{@"sp" : @8.0f, @"fh" : @44.0f};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-sp-[_charmField]-sp-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-sp-[_secureField]-sp-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-sp-[_charmField(fh)]-sp-[_secureField(_charmField)]" options:0 metrics:metrics views:views]];
    
    return self;
}

@end
