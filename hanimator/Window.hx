package hanimator;

import hxd.Window.getInstance as window;

class Window
{
	public static var width(get, set):Int;

	static function get_width():Int return window().width;

	static function set_width(width:Int):Int
	{
		resize(width, height);
		return window().width;
	}

	public static var height(get, set):Int;

	static function get_height():Int return window().height;

	static function set_height(height:Int):Int
	{
		resize(width, height);
		return window().height;
	}

	public static function setTitle(title:String = ' HAnimator') window().title = title;

	public static function resize(width = 1280, height = 720) window().resize(width, height);
}
