import Toybox.Lang;
import Toybox.WatchUi;

class padelDelegate extends WatchUi.BehaviorDelegate {

	function initialize() {
		BehaviorDelegate.initialize();
	}

	function onMenu() as Boolean {
		WatchUi.pushView(new Rez.Menus.MainMenu(), new padelMenuDelegate(), WatchUi.SLIDE_UP);
		return true;
	}

}