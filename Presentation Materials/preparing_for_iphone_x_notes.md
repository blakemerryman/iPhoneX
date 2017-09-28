# Getting Ready for iPhone X
### Screen Size
- - - -
- Super Retina: 
	- 375 points x 812 points @3x
	- 5.8”
	- HDR support
- Same (logical) width (portrait mode) as iPhone 6/7/8.
- Recommend PDFs for glyphs & other vector art.
- Should provide @2x & @3x versions for rasterized artwork.

### Layout
- - - -
- Layout should fill screen.
	- Apps should extend edge-to-edge, providing a full screen experience.
- Be mindful of rounded corners, sensor housing, & home indicator.
- Most apps that use system standard UI elements (nav bars, tables views, collection views, etc) will adapt for free (i.e. background materials extend to the edges && UI elements are properly inset).
- Custom layouts can easily support iPhone X by adopting Auto Layout && adhering to safe area and margin layout guides.
- Inset essential content to prevent clipping.
- Status bar is taller on iPhone X and doesn’t change height when background tasks (calls/nav/etc.) are active.
- Don’t hide status bar unless it’s a value add.
- iPhone X has a different aspect ratio than iPhone 6/7/8.
- Letter-boxed _content (images, video, etc.)_ is preferable to cropped content.
- Do not place controls/gestures near home indicator or corners.
- Do not mask or call attention to key display features (rounded corners, sensor housing, home indicator).
- Only auto-hide home indicator when it’s a value add (i.e. full screen content).

### Color
- - - -
> Supports a P3 color space, which can produce richer, more saturated colors than sRGB.   
>   
> Use wide color to enhance the visual experience. Photos and videos that use wide color are more lifelike, and visual data and status indicators that use wide color are more impactful.  

### Gestures
- - - -
- Avoid interfering with system edge gestures (home, multi-tasking, control center, notification center, etc.)
- Only use edge protect when there’s a value add.

### Building for iPhone X
- - - -
- Layout Issues encountered on WWDC app:
	- Ensure you have a properly sized launch storyboard or image.
	- Ensure controls are laid out relative to safe area layout guides.
		- May need to be turned on manually in XIBs/Storyboards.
	- Search bar should blend into navigation bar and respect safe area.
	- By default, tableview cell’s content view will not extend beyond the safe area. This can be switched on/off.
- `safeAreaLayoutGuide` && `safeAreaInsets`
- Layout issues in my client project
	- Custom UI near top & bottom.
	- Weren’t respecting safe area (landscape 😱)

### Sources
- - - -
- [Creating apps for iPhone X - Apple Developer](https://developer.apple.com/iphone/)
- [Building Apps for iPhone X - Fall 2017 - Videos - Apple Developer](https://developer.apple.com/videos/play/fall2017/201/)
- [Designing for iPhone X - Fall 2017 - Videos - Apple Developer](https://developer.apple.com/videos/play/fall2017/801/)
- [iPhone X - Overview - iOS Human Interface Guidelines](https://developer.apple.com/ios/human-interface-guidelines/overview/iphone-x/)
- [iOS Apps - Design Resources](https://developer.apple.com/design/resources/#ios-apps)

### Demo App
- - - -
![](preparing_for_iphone_x_notes/preparing_for_iphone_x_notes/bear_sketch@2x.png)
