model cooler
  Chemical.UnitOp.Cooler cooler1(P = 500000, known_Tout = true, Tout = 150, known_Q = false, Heat_Stream = true) annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Chemical.System system(set_n = 2, use_EnergyBal = true, OpenSys = true, use_T = true, known_Cv = {false, false}, Cv_coeff_aq = {0, 0}, known_Cp = {false, false}, Cp_coeff_aq = {0, 0}) annotation(Placement(visible = true, transformation(origin = {80, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Chemical.Specify.point point1(known_u = true, P = 500000, T = 200, Gas = false, known_U = {true, true}, U = {0, 0}, known_H = {false, false}, known_X = {false, false}, known_comp = {true, true}, comp_flow = {.6, .4}) annotation(Placement(visible = true, transformation(origin = {-60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Chemical.Specify.point point2(known_u = true, known_P = false, known_T = false, Gas = false, known_U = {true, false}, U = {0, 0}, known_H = {false, false}, known_X = {false, false}, known_comp = {false, false}) annotation(Placement(visible = true, transformation(origin = {60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Chemical.Interfaces.HeatPort_In QIn annotation(Placement(visible = true, transformation(origin = {0, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(cooler1.Out[1], point2.port) annotation(Line(points = {{7.9, 0.4}, {59.1549, 0.4}, {59.1549, 0.469484}, {59.1549, 0.469484}}, color = {0, 127, 255}));
  connect(point1.port, cooler1.In[1]) annotation(Line(points = {{-60, 0}, {-7.51174, 0}, {-7.51174, 0}, {-7.51174, 0}}, color = {0, 127, 255}));
  connect(cooler1.QIn, QIn) annotation(Line(points = {{0, -8}, {1.40845, -8}, {1.40845, -40.8451}, {1.40845, -40.8451}}, color = {191, 0, 0}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end cooler;