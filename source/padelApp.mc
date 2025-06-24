import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

class padelApp extends Application.AppBase {

	function initialize() {
		AppBase.initialize();
	}

	// onStart() is called on application start up
	function onStart(state as Dictionary?) as Void {
	}

	// onStop() is called when your application is exiting
	function onStop(state as Dictionary?) as Void {
	}

	// Return the initial view of your application here
	function getInitialView() as [Views] or [Views, InputDelegates] {
		var loop = new WatchUi.ViewLoop(new padelActivityViewLoop(), {:wrap => true, :color => Graphics.COLOR_DK_BLUE});
		return [ loop, new ViewLoopDelegate(loop) ];
	}

}

function getApp() as padelApp {
	return Application.getApp() as padelApp;
}
