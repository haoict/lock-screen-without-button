@interface SpringBoard : UIApplication
- (void)_simulateLockButtonPress;
@end

%hook SBIconListView
  - (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    if ([[touches anyObject] tapCount] == 2) [(SpringBoard *)[%c(SpringBoard) sharedApplication] _simulateLockButtonPress];
  }
%end
