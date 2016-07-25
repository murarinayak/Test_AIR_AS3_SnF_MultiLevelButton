package com.murari.components
{
	import flash.geom.Point;
	
	import feathers.controls.Button;
	
	import starling.events.Event;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	
	public class M2NButton extends Button
	{
		private var _childButton:Button;
		
		public function M2NButton()
		{
			super();
			isQuickHitAreaEnabled = false;
			addComponents();
		}
		
		private function addComponents():void
		{
			_childButton = new Button();
			_childButton.label = "Child";
			_childButton.addEventListener(Event.TRIGGERED, _onTrigger);
			addChild(_childButton);
		}
		
		private function _onTrigger(event:Event):void
		{
			trace ("Child Triggered");
		}
		
		override protected function button_touchHandler(event:TouchEvent):void
		{
			//if (_childButton.visible)
			{
				if (this.touchPointID >= 0)
				{
					var touch:Touch = event.getTouch(this, null, this.touchPointID);
					if (!touch)
					{
						//this should never happen
						return;
					}
					
					var HELPER_POINT:Point = new Point();
					touch.getLocation(_childButton, HELPER_POINT);
					
					if (this.hitTest(HELPER_POINT, true))  
					{
						trace("Button Pressed");
						this.resetTouchState(touch);
					}
					else
						super.button_touchHandler(event);
				}
				else super.button_touchHandler(event);
			}
			//else			{				super.button_touchHandler(event);			}
		}
		
		override protected function draw():void
		{
			super.draw();
			
			if (_childButton);
			{
				_childButton.width = 100;
				_childButton.height = this.height - 20;
				_childButton.x = this.width - _childButton.width - (this.height - _childButton.height) * 0.5;
				_childButton.y = (this.height - _childButton.height) * 0.5;
			}
		}
	}
}