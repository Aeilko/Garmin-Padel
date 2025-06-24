import Toybox.Lang;
import Toybox.WatchUi;

class padelActivityViewLoop extends ViewLoopFactory {

	private var views as Array<WatchUi.View>;
	private var delegate as WatchUi.BehaviorDelegate;

	function initialize() {
		// Add pages
		self.views = [];
        self.views.add(new activityScoreView());
        self.views.add(new activityHealthView());
        self.views.add(new activityFinishView());

		// Set loop
		self.delegate = new padelDelegate();
		ViewLoopFactory.initialize();
	}

	function getSize(){
		return self.views.size();
	}

	function getView(page){
		return [self.views[page] as WatchUi.View, self.delegate];
	}
}
