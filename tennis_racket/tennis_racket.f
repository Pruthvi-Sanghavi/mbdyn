# Intermediate axis theorem (tennis_racket.f)

begin: data;
	problem: initial value; # Defines an intial value problem
end: data;

begin: initial value; # Defining the simulation parameters
	initial time: 0;
	final time: 5.;
	time step: 1.e-2;
	max iterations: 10;
	tolerance: 1.e-6;
end: initial value;

begin: control data; # Global parameters are defined here
	structural nodes: 1; # Nodes are the entities which own the kinematic degrees of freedom
	rigid bodies: 1; # Building block of the simulation model
end: control data;

# Design Variables
set: real M = 1.; # Mass in kg
set: real Lx = 0.15; # Width in meters
set: real Ly = 0.05; # Thickness in meters
set: real Lz = 0.3; # Height in meters
set: real Wx0 = 0.; # Angular velocity along x
set: real Wy0 = 0.; # Angular velocity along y
set: real Wz0 = 5.; # Angular velocity along z

set: real Ixx = 1./12.*M*(Ly^2+Lz^2); # [kgm^2] Moment of inertia about x axis
set: real Iyy = 1./12.*M*(Lz^2+Lx^2); # [kgm^2] Moment of inertia about y axis
set: real Izz = 1./12.*M*(Lx^2+Ly^2); # [kgm^2] Moment of inertia about z axis

# Node Labels
set: integer Node_Block = 1;

# Body Labels
set: integer Body_Block = 1;

begin: nodes;
   structural: Node_Block, dynamic,
      0., 0., 0.,    # absolute position
      eye,           # absolute orientation
      null,          # absolute velocity
      Wx0, Wy0, Wz0; # absolute angular velocity
      
end: nodes;

begin: elements;
   body: Body_Block, Node_Block,
      M,                   # mass
      null,                # relative center of mass
      diag, Ixx, Iyy, Izz; # inertia matrix
      
end: elements;
