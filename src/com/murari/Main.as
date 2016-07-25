package com.murari
{
	import com.murari.screens.M2NScreenTest;
	
	import feathers.controls.ScreenNavigator;
	import feathers.controls.ScreenNavigatorItem;
	import feathers.motion.transitions.ScreenSlidingStackTransitionManager;
	import feathers.themes.MetalWorksMobileTheme;
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Main extends Sprite
	{
		private var _navigator:ScreenNavigator;
		
		
		public function Main()
		{
			super();
			this.addEventListener(Event.ADDED_TO_STAGE, _onAddedToStage);
		}
		
		private function _onAddedToStage(event:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, _onAddedToStage);
			
			new MetalWorksMobileTheme();
			
			_loadScreens();
		}
		
		private function _loadScreens():void
		{
			_navigator = new ScreenNavigator();
			_navigator.x = 0;
			_navigator.y = 0;
			_navigator.width = stage.stageWidth;
			_navigator.height = stage.stageHeight;
			addChild(_navigator);
			
			_navigator.addScreen(M2NScreenTest.SCREEN_NAME, new ScreenNavigatorItem(M2NScreenTest, 
				{
					
				}
			));
			
			
			var _screenTransitionManager:ScreenSlidingStackTransitionManager = new ScreenSlidingStackTransitionManager(_navigator);
			_screenTransitionManager.duration = 0.5;
			
			_navigator.showScreen(M2NScreenTest.SCREEN_NAME);
		}
		
	}
}