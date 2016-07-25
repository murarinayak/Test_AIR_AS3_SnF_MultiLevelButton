package
{
	import com.murari.Main;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	import starling.core.Starling;
	
	public class Test_AIR_AS3_SnF_MultiLevelButton extends Sprite
	{
		private var _starling:Starling;
		
		
		public function Test_AIR_AS3_SnF_MultiLevelButton()
		{
			super();
			
			// support autoOrients
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			// Create a Starling instance that will run the "Game" class
			_starling = new Starling(Main, stage);
			_starling.start();
		}
	}
}