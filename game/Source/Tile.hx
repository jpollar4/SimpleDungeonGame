package;


import flash.display.Bitmap;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.BlurFilter;
import flash.filters.DropShadowFilter;
import flash.geom.Point;
import flash.media.Sound;
import flash.text.TextField;
import flash.text.TextFormat;
import flash.text.TextFormatAlign;
import flash.Lib;
import motion.Actuate;
import motion.easing.Quad;
import openfl.Assets;


enum TileState{
	NONE;
	DIRT;
	STONE;
	GOLD;
	GEM;
}


class Tile extends Sprite {

	//private var Image:BitmapData;
	
	public var tileState:TileState;
	
	public var nXLocation:Int;	
	public var nYLocation:Int;

	public function new (nX, nY, tile) {
		
		super ();		
		construct (nX, nY, tile);
		
		
	}
	
	private function construct (nX, nY, tile):Void {
		var Image =  Assets.getBitmapData ("images/FloorTile.png");
		switch(tile){
			case (NONE):
				Image = Assets.getBitmapData ("images/DirtWall.png");
			default:
				Image = Assets.getBitmapData ("images/FloorTile.png");
		}
		tileState = tile;
		
		//Image.width = 64;

		//Image.height = 64;
		
		x = nX;
		y = nY;
        graphics.beginBitmapFill (Image);
        graphics.drawRect (0, 0, Image.width, Image.height);

		

		
	}
	public function updatePosition (nX, nY):Void {
	
		// switch(tileState){
		// 	case (NONE):
		// 		Image = new Bitmap (Assets.getBitmapData ("images/DirtWall.png"));
		// 	default:
		// 		Image = new Bitmap (Assets.getBitmapData ("images/FloorTile.png"));
		// }
		// removeChild(Image);
		//addChild(Image);
		
	}
	
	
	
	
	// Event Handlers
	
	
	
	
	
	
}