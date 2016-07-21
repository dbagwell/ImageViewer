//
//  GalleryConfiguration.swift
//  ImageViewer
//
//  Created by Kristian Angyal on 04/03/2016.
//  Copyright © 2016 MailOnline. All rights reserved.
//

import UIKit

public enum GalleryCloseButtonMode {

    case None
    case BuiltIn /// Standard white X with transparent tappable area, positioned in the top right corner.
    case Custom(UIButton)
}

public enum GalleryPagingMode {

    case Standard /// Allows paging through images from 0 to N, when first or last image reached ,horizontal swipe to dismiss kicks in.
    case Carousel /// Pages through images from 0 to N and the again 0 to N in a loop, works both directions.
}

public enum DisplacementStyle {

    case Normal
    case SpringBounce(CGFloat) ///
}

public typealias GalleryConfiguration = [GalleryConfigurationItem]

public enum GalleryConfigurationItem {

    case ImageDividerWidth(CGFloat) /// Distance (width of the area) between images when paged.
    case SpinnerStyle(UIActivityIndicatorViewStyle) /// This spinner is shown when we page to an image page, but the image itself is still loading.
    case SpinnerColor(UIColor) /// Color of the spinner above.
    case CloseButtonMode(GalleryCloseButtonMode)
    case PagingMode(GalleryPagingMode)
    case CloseLayout(CloseButtonLayout) /// Layout behaviour for the close button.
    case HeaderViewLayout(HeaderLayout) /// Layout behaviour for optional header view.
    case FooterViewLayout(FooterLayout) /// Layout behaviour for optional footer view.
    case StatusBarHidden(Bool) /// Sets the status bar visible/invisible while gallery is presented.
    case HideDecorationViewsOnLaunch(Bool) /// Sets the close button, header view and footer view visible/invisible on launch. Visibility of these three views is toggled by single tapping anywhere in the gallery area. This setting is global to Gallery.

    case DisplacementDuration(NSTimeInterval) //// Duration of the displacement effect when gallery is being presented via touching an image
    case DisplacementTransitionCurve(UIViewAnimationCurve)
    case DisplacementTransitionStyle(DisplacementStyle)

    case OverlayColor(UIColor) ///Base color of the overlay layer that is mostly visible when images are displaced (gallery is being presented), rotated and interactively dismissed.
    case OverlayBlurStyle(UIBlurEffectStyle) ///Allows to select the overall B&W tone of the overlay
    case OverlayBlurOpacity(CGFloat) ///The opacity of overlay layer when the displacement effect finishes anf the gallery is fully presented. Valid values are from 0 to 1 where 1 is full opacity i.e the overlay layer is fully opaque, 0 is completely transparent and effectively invisible.
    case OverlayColorOpacity(CGFloat) ///The opacity of overlay layer when the displacement effect finishes anf the gallery is fully presented. Valid values are from 0 to 1 where 1 is full opacity i.e the overlay layer is fully opaque, 0 is completely transparent and effectively invisible.
    case OverlayAccelerationFactor(CGFloat) ///This accelerates or decelerates the pace of overlay opacity transition with relation to the image displacement transition. When we use the bounce effect while  displacing the image, it means the image will reach its destination and will bump there for a while. It took 80 percent of duration time for the image to get there and 20 percent of duration time to bounce there. But we want the overlay opacity to fully reach its target value walready when the image reaches its destination in T = 0.8 duration. The time when it bounces should not be taken into account for the opacity duration. The aceleration factor allows us to twek the opacity transition duration against the displacement duration. So for the example mentioned her we would use 0.8. The value we choose of course depends on the bounce settings so thre is no clear math available for us, it depends a lot on experimentation to get the desired behaviour.
}

