package hanimator;

import hxd.Window.getInstance as window;

class Window
{
	public static function setTitle(title:String = ' HAnimator') window().title = title;

	public static function resize(width = 1280, height = 720) window().resize(width, height);
}
