@interface CCUIDisplayModuleViewController : UIView
@end

@interface MediaControlsVolumeSliderView : UIView
@end

@interface CCUIConnectivityBluetoothViewController : UIView
    -(id)_viewControllerForAncestor;
@end

@interface CCUIConnectivityWifiViewController : UIView
    -(id)_viewControllerForAncestor;
@end

@interface CCUIConnectivityAirplaneViewController : UIView
    -(id)_viewControllerForAncestor;
@end

@interface CCUIConnectivityCellularDataViewController : UIView
    -(id)_viewControllerForAncestor;
@end

@interface DNDUIControlCenterModule : UIView
    -(id)_viewControllerForAncestor;
@end

@interface CCUICAPackageDescription : NSObject
    @property (nonatomic,copy,readonly) NSURL *packageURL;
    -(NSURL *)packageURL;
@end

@interface CCUICAPackageView : UIView
    -(id)_viewControllerForAncestor;
    @property (nonatomic,strong,readwrite) CCUICAPackageDescription *packageDescription;
@end

@interface CCUIRoundButton : UIView
    -(id)_viewControllerForAncestor;
@end

@interface CCUIButtonModuleView : UIView
@end

@interface CCUIOrientationLockModule : UIView
    -(id)_viewControllerForAncestor;
@end

UIViewController *ancestor; // as global, so outside of hooks

