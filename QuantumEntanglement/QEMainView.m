//
//  QEMainView.m
//  QuantumEntanglement
//
//  Created by Daniel Blakemore on 9/23/14.
//  Copyright (c) 2014 Pixio. All rights reserved.
//

#import "QEMainView.h"

#define PastelRedWithAlpha(a) ([UIColor colorWithRed:(253.0f / 255.0f) green:(188.0f / 255.0f) blue:(180.0f / 255.0f) alpha:(a)]) // melon
#define PastelBlueWithAlpha(a) ([UIColor colorWithRed:(114.0f / 255.0f) green:(160.0f / 255.0f) blue:(193.0f / 255.0f) alpha:(a)]) // air superiority blue
#define PastelGreenWithAlpha(a) ([UIColor colorWithRed:(123.0f / 255.0f) green:(182.0f / 255.0f) blue:(97.0f / 255.0f) alpha:(a)]) // bud green

@implementation QEMainView
{
    UILabel * _instructionLabel;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self == nil)
        return nil;
    
    [self setBackgroundColor:[UIColor whiteColor]];
    
    _instructionLabel = [[UILabel alloc] init];
    [_instructionLabel setTranslatesAutoresizingMaskIntoConstraints:FALSE];
    [_instructionLabel setNumberOfLines:0];
    [_instructionLabel setText:@"To reproduce the bug:\n1. press the red button\n2. come back\n3. press the blue button\n4. tap the top field to edit\nThe layout of the red button's textfield affects the first field in the blue button's controller even after the red button's view has been deallocated.\nNotice that the green button controller's textfield layout does not have the same effect."];
    [self addSubview:_instructionLabel];
    
    _normalButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_normalButton setTranslatesAutoresizingMaskIntoConstraints:FALSE];
    [_normalButton setTitle:@"This View Has No Effect" forState:UIControlStateNormal];
    [_normalButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_normalButton setBackgroundColor:PastelGreenWithAlpha(0.7f)];
    [[_normalButton layer] setCornerRadius:5.0f];
    [[_normalButton layer] setBorderColor:[PastelGreenWithAlpha(1.0f) CGColor]];
    [[_normalButton layer] setBorderWidth:2.0f];
    [self addSubview:_normalButton];
    
    _strangeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_strangeButton setTranslatesAutoresizingMaskIntoConstraints:FALSE];
    [_strangeButton setTitle:@"This View Has A Strange Effect" forState:UIControlStateNormal];
    [_strangeButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_strangeButton setBackgroundColor:PastelRedWithAlpha(0.7f)];
    [[_strangeButton layer] setCornerRadius:5.0f];
    [[_strangeButton layer] setBorderColor:[PastelRedWithAlpha(1.0f) CGColor]];
    [[_strangeButton layer] setBorderWidth:2.0f];
    [self addSubview:_strangeButton];
    
    _charmButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_charmButton setTranslatesAutoresizingMaskIntoConstraints:FALSE];
    [_charmButton setTitle:@"This View Has Been Changed\nThrough Quantum Mechanics" forState:UIControlStateNormal];
    [[_charmButton titleLabel] setNumberOfLines:0];
    [[_charmButton titleLabel] setTextAlignment:NSTextAlignmentCenter];
    [_charmButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_charmButton setBackgroundColor:PastelBlueWithAlpha(0.7f)];
    [[_charmButton layer] setCornerRadius:5.0f];
    [[_charmButton layer] setBorderColor:[PastelBlueWithAlpha(1.0f) CGColor]];
    [[_charmButton layer] setBorderWidth:2.0f];
    [self addSubview:_charmButton];
    
    NSDictionary* views = NSDictionaryOfVariableBindings(_instructionLabel, _normalButton, _strangeButton, _charmButton);
    NSDictionary* metrics = @{@"sp" : @10
                              , @"bh" : @50, @"bh2" : @80};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-sp-[_instructionLabel]-sp-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-sp-[_instructionLabel]" options:0 metrics:metrics views:views]];
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-sp-[_normalButton]-sp-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-sp-[_strangeButton]-sp-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-sp-[_charmButton]-sp-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[_normalButton(bh)]-sp-[_strangeButton(bh)]-sp-[_charmButton(bh2)]-sp-|" options:0 metrics:metrics views:views]];
    
    return self;
}

@end
