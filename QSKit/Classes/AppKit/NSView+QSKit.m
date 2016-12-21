//
//  NSView+QSKit.m
//  Q Branch Standard Kit
//
//  Created by Brent Simmons on 10/30/13.
//  Copyright (c) 2013 Q Branch LLC. All rights reserved.
//

#import "NSView+QSKit.h"


@implementation NSView (QSKit)


- (void)qs_addFullSizeConstraintsForSubview:(NSView *)view {
	
	NSDictionary *d = NSDictionaryOfVariableBindings(view);
	
	NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"|-0-[view]-0-|" options:0 metrics:nil views:d];
	[self addConstraints:constraints];
	constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[view]-0-|" options:0 metrics:nil views:d];
	[self addConstraints:constraints];
}


- (void)qs_setFrameIfNotEqual:(NSRect)r {
	
	if (!NSEqualRects(self.frame, r)) {
		self.frame = r;
	}
}


@end
