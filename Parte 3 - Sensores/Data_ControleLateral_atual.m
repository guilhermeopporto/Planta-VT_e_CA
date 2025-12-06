clear;

EV.NumberOfWheelsPerAxle = 2;
EV.Mass = 357;
EV.FrontAxlePositionfromCG = 0.775;
EV.RearAxlePositionfromCG = 0.775;
EV.WheelBase = EV.FrontAxlePositionfromCG + EV.RearAxlePositionfromCG;
EV.HeightCG = 0.275;
EV.InitialLongPosition = 0;
EV.InitialLongVel = 9.7;                %[m/s]
EV.TrackWidth = [1.17 1.15];
EV.InitialLatPosition = 0;
EV.InitialLatVel = 0;
EV.YawMomentInertia = 250;              %750
EV.InitialYawAngle = 0;
EV.InitialYawRate = 0;
EV.FrontalArea = 0.86;                  %[m²]
EV.LongDragCoeff = 0.55;                 

WHL.DampingCoefficient = 0.001;
WHL.WheelInertia = 1.0;                 %0.8
WHL.RelaxationLength = 0.15;
WHL.LoadedRadius = 0.25;
WHL.UnloadedRadius = 0.26035;
WHL.WheelInitAngVel = EV.InitialLongVel/0.25;
    
MTR.Speed  = [0 461 565 670 775 880 942 943];
MTR.Torque = [13.1	13.1	10.6	9.0     7.7     6.8     6.4     0.1];
MTR.Overpower = 3.5;
MTR.MaxTorque = 13.1*MTR.Overpower;

EMP.Gain = 3.0;
EMP.TimeConstant = 0.02;

GND.Friction = ones(4,1).*2.5;

TME.Simulation_VT = 16;
TME.Simulation_CA = 10;

%%

%Adições:

EV.CornerStiffFront =   50420.286;        %[N/rad]
EV.CornerStiffRear =    50420.286;  

STEER.Volante =         [-1.941983885	-1.623822692	-1.300158711	-0.97349321     -0.646327455	-0.321162714	0	0.321162714	0.646327455	0.97349321	1.300158711	1.623822692	1.941983885];
STEER.Right =           [-0.523598776	-0.436332313	-0.34906585     -0.262          -0.174532925	-0.087266463	0	0.089011792	0.181863308	0.278729082	0.380132711	0.486772328	0.599520598];
STEER.Left =            [-0.599520598	-0.486772328	-0.380132711	-0.279          -0.181863308     -0.089011792	0	0.087266463	0.174532925	0.261799388	0.34906585	0.436332313	0.523598776];

Right = STEER.Right;

SENSOR.SteerAvg =       (STEER.Right + STEER.Left)/2;
SENSOR.APPSAcionado =   [0 20 40 60 80 100];
SENSOR.APPS1 =          [0.36 0.57 1.3 2.75 3.92 4.29];

%%
%Asphalt, dry
C1 = 1.2801;
C2 = 23.99;
C3 = 0.52;
%Asphalt, wet
% C1 = 0.857;
% C2 = 33.822;
% C3 = 0.347;
