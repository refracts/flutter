/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#import "Flutter.h"

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

%group PackageHooks
	%hook CCUICAPackageView
		-(void)setAlpha:(double)arg1
		{
			for (UIView *pv in self.subviews)
			{

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

				if([self.superview class] == %c(MediaControlsVolumeSliderView)) //Volume Slider
				{
					if ([[NSFileManager defaultManager] fileExistsAtPath:@"Library/Application Support/Flutter/vol.png"])
					{
						for (UIImageView *v in self.subviews)
						{
							[v removeFromSuperview];
						}

						UIImageView *t = [[UIImageView alloc] initWithFrame:CGRectMake(-15,-15,30,30)];
						arg1 = 0.3;
						t.image = [UIImage imageWithContentsOfFile:@"Library/Application Support/Flutter/vol.png"];
						[self addSubview: t];
					}

				}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

				ancestor = [self _viewControllerForAncestor];
				if (([ancestor isKindOfClass:%c(CCUIDisplayModuleViewController)])) //Backlight Slider
				{
					if ([[NSFileManager defaultManager] fileExistsAtPath:@"Library/Application Support/Flutter/backlight.png"])
					{
						for (UIImageView *v in self.subviews)
						{
							[v removeFromSuperview];
						}

						UIImageView *t = [[UIImageView alloc] initWithFrame:CGRectMake(-15,-15,30,30)];
						arg1 = 0.3;
						t.image = [UIImage imageWithContentsOfFile:@"Library/Application Support/Flutter/backlight.png"];
						[self addSubview: t];
					}
				}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

				//Wifi and BT

				ancestor = [self _viewControllerForAncestor];
				if (([ancestor isKindOfClass:%c(CCUIConnectivityBluetoothViewController)])) //BT
				{
					if ([[NSFileManager defaultManager] fileExistsAtPath:@"Library/Application Support/Flutter/bt.png"])
					{
						for (UIImageView *v in self.subviews)
						{
							[v removeFromSuperview];
						}

						UIImageView *t = [[UIImageView alloc] initWithFrame:CGRectMake(10,10,38,38)];
						t.image = [UIImage imageWithContentsOfFile:@"Library/Application Support/Flutter/bt.png"];
						[self addSubview: t];

						t.translatesAutoresizingMaskIntoConstraints = NO;
						[t.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant: 12].active = YES;
						[t.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant: -12].active = YES;
						[t.topAnchor constraintEqualToAnchor:self.topAnchor constant: 12].active = YES;
						[t.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant: -12].active = YES;
					}
				}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

				ancestor = [self _viewControllerForAncestor];
				if (([ancestor isKindOfClass:%c(CCUIConnectivityWifiViewController)])) //WiFi
				{
					if ([[NSFileManager defaultManager] fileExistsAtPath:@"Library/Application Support/Flutter/wifi.png"])
					{
						for (UIImageView *v in self.subviews)
						{
							[v removeFromSuperview];
						}

						UIImageView *t = [[UIImageView alloc] initWithFrame:CGRectMake(10,10,38,38)];
						t.image = [UIImage imageWithContentsOfFile:@"Library/Application Support/Flutter/wifi.png"];
						[self addSubview: t];

						t.translatesAutoresizingMaskIntoConstraints = NO;
						[t.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant: 12].active = YES;
						[t.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant: -12].active = YES;
						[t.topAnchor constraintEqualToAnchor:self.topAnchor constant: 12].active = YES;
						[t.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant: -12].active = YES;
					}
				}
			}
			%orig;
		}
	%end
%end

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

%group ImageHooks
	%hook CCUIRoundButton
		-(void)setAlpha:(double)arg1
		{
			%orig;

			ancestor = [self _viewControllerForAncestor];
			if (([ancestor isKindOfClass:%c(CCUIConnectivityCellularDataViewController)])) //Cell
			{
				if ([[NSFileManager defaultManager] fileExistsAtPath:@"Library/Application Support/Flutter/cell.png"])
				{
					for (UIImageView *v in self.subviews)
					{
						if (([v isKindOfClass:%c(UIImageView)])) 
						{
							[v removeFromSuperview];
						}
					}
					UIImageView *t = [[UIImageView alloc] initWithFrame:CGRectMake(10,10,38,38)];
					t.image = [UIImage imageWithContentsOfFile:@"Library/Application Support/Flutter/cell.png"];
					[self addSubview: t];

					t.translatesAutoresizingMaskIntoConstraints = NO;
					[t.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant: 12].active = YES;
					[t.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant: -12].active = YES;
					[t.topAnchor constraintEqualToAnchor:self.topAnchor constant: 12].active = YES;
					[t.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant: -12].active = YES;
				}
			}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

			ancestor = [self _viewControllerForAncestor];
			if (([ancestor isKindOfClass:%c(CCUIConnectivityAirplaneViewController)])) //Airplane
			{
				if ([[NSFileManager defaultManager] fileExistsAtPath:@"Library/Application Support/Flutter/plane.png"])
				{
					for (UIImageView *v in self.subviews)
					{
						if (([v isKindOfClass:%c(UIImageView)])) 
						{
							[v removeFromSuperview];
						}
					}
					UIImageView *t = [[UIImageView alloc] initWithFrame:CGRectMake(10,10,38,38)];
					t.image = [UIImage imageWithContentsOfFile:@"Library/Application Support/Flutter/plane.png"];
					[self addSubview: t];

					t.translatesAutoresizingMaskIntoConstraints = NO;
					[t.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant: 12].active = YES;
					[t.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant: -12].active = YES;
					[t.topAnchor constraintEqualToAnchor:self.topAnchor constant: 12].active = YES;
					[t.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant: -12].active = YES;
				}
			}
		}
	%end
%end

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

%ctor 
{
	%init(PackageHooks);
	%init(ImageHooks);
}