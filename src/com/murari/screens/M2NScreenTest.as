package com.murari.screens
{
	import com.murari.components.M2NButton;
	
	import feathers.controls.Screen;
	
	import starling.events.Event;
	
	public class M2NScreenTest extends Screen
	{
		public static const SCREEN_NAME:String = "test-screen";
		
		private var _button:M2NButton;
		
		public function M2NScreenTest()
		{
			super();
		}
		
		override protected function initialize():void
		{
			super.initialize();
			initializeScreen();
		}
		
		public function initializeScreen():void
		{
			_createContainers();
		}
		
		private function _createContainers():void
		{
			_button = new M2NButton();
			_button.label = "Parent";
			_button.addEventListener(Event.TRIGGERED, _onTrigger);
			addChild(_button);
		}
		
		private function _onTrigger(event:Event):void
		{
			trace ("Parent Triggered");
		}
		
		override protected function draw():void
		{
			super.draw();
			
			if (_button)
			{
				_button.width = 500;
				_button.height = 100;
			}
		}
	}
}