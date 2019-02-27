package sx.flatui.flash;
import openfl.text.Font;
class Fonts {
    public static function init() {
        FiraBoldFont.init();
    }
}

@:font("assets/flatui/fonts/FiraCode-Bold.ttf")
class FiraBoldFont extends Font {

    public static var NAME(default, null):String = "Fira Code Bold";

    public static function init():Void {
        #if js
        NAME = openfl.utils.Assets.getFont("assets/fonts/FiraCode-Bold.ttf").fontName;
        #else
        Font.registerFont(FiraBoldFont);
        NAME = (new FiraBoldFont()).fontName;
        #end
    }

}
