print("Initializing Doors");

var left_door = aircraft.door.new("/controls/doors/left", 2);
var right_door = aircraft.door.new("/controls/doors/right", 2);

var transform = aircraft.door.new("/controls/doors/transform", 30);

var clalpha = func {
        if (getprop("/controls/doors/transform/position-norm") > 0) {
          setprop("/fdm/jsbsim/aero/coefficient/CLalpha", 0);
        }

	settimer(clalpha, 0.1);
}

_setlistener("/sim/signals/fdm-initialized", clalpha); 