package;

import hxd.Res;
import particles.Particles2D;
import particles.loaders.ParticleLoader;

class Main extends hxd.App {    
    var parts : Particles2D;
    var parts2 : Particles2D;
    var scale : Float = 1;
    var sign : Int = 1;

    override function init() {
        parts = ParticleLoader.Load (Res.frosty_blood_plist, Res.frosty_blood_png.toTile ());                
        parts.x = s2d.width / 2;
        parts.y = s2d.height / 2;        
        s2d.addChild (parts);
        parts.Emit (true);

        parts2 = ParticleLoader.Load (Res.fountain_lap, Res.fountain_png.toTile ()); 
        parts2.x = s2d.width / 2;
        parts2.y = s2d.height / 2; 
        s2d.addChild (parts2);
        parts2.Emit (true);
    }

    // on each frame
    override function update (dt : Float) {
    }        

    static function main() {
        Res.initEmbed ();
        new Main();
    }
}