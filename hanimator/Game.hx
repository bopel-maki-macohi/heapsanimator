package hanimator;

import hanimator.screens.MainScreen;
import hanimator.screens.Screen;
import hxd.App;

class Game extends App
{
	public var screen:Screen;

	static function main() new Game();

	override function init()
	{
		super.init();

		trace(Window.width);
		trace(Window.height);
		// Window.resize();

		setScreen(new MainScreen());
	}

	override function update(dt:Float)
	{
		super.update(dt);
		screen.update(dt);
	}

	public function setScreen(incomingScreen:Screen)
	{
		if (incomingScreen == null) return;

		screen = incomingScreen;
		incomingScreen.init();
		setScene(incomingScreen);
	}
}
