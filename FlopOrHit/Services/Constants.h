//
//  Constants.h
//  FlopOrHit
//
//  Created by Rodel Medina on 3/16/15.
//  Copyright (c) 2015 Sourcepad. All rights reserved.
//


/*
	|--------------------------------------------------------------------------
	| COLORS
	|--------------------------------------------------------------------------
	*/

#define RGB(r,g,b)                                  [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]
#define RGBA(r, g, b, a)                            [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#define COLOR_THEME_ORANGE              RGB(244, 115, 61)
#define COLOR_THEME_GREEN               RGB(172, 203, 18)
#define COLOR_THEME_RED                 RGB(221, 81, 76)
#define COLOR_THEME_LIGHT_GRAY          RGB(246, 247, 248)
#define COLOR_THEME_DARK_GRAY           RGB(227, 228, 229)

#define COLOR_THEME_NAVIGATION          COLOR_THEME_ORANGE
#define COLOR_THEME_MAIN_BG             RGB(255, 255, 255)


/*
	|--------------------------------------------------------------------------
	| NOTIFICATION NAMES
	|--------------------------------------------------------------------------
	*/

#define NOTIF_MODEL_GET_PHOTOS      @"modelGetPhotos"
#define NOTIF_GET_PHOTOS_SUCCESS    @"successGetPhotos"
#define NOTIF_GET_PHOTOS_FAILED     @"failedGetPhotos"