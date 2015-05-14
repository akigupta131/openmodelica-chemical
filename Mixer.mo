model b
  inner Chemical.System system(set_n = 2, known_Cv = {false, false}, Cv_coeff_aq = {0, 0}, known_Cp = {false, false}, Cp_coeff_aq = {0, 0}, OpenSys = true, use_EnergyBal = true) annotation(Placement(visible = true, transformation(origin = {80, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Chemical.Specify.point input1(Gas = false, known_U = {true, false}, known_H = {false, false}, known_X = {false, false}, known_comp = {true, true}, comp_flow = {80, 120}, known_T = false, known_u = true, U = {0, 0}, Tref = 25, phi(start = 10), w(start = 20)) annotation(Placement(visible = true, transformation(origin = {-80, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Chemical.Specify.point input2(Gas = false, known_U = {true, true}, known_H = {false, false}, known_X = {false, false}, known_comp = {true, true}, comp_flow = {105, 45}, known_T = false, known_u = true, U = {0, 0}, Tref = 25, phi(start = 40), w(start = 18)) annotation(Placement(visible = true, transformation(origin = {-80, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Chemical.UnitOp.Mixer mixer(nin = 2, known_Q = true, Temp_change = true, Heatflow = 0) annotation(Placement(visible = true, transformation(origin = {-20, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Chemical.Specify.point out(Gas = false, known_U = {true, true}, known_H = {false, false}, known_X = {false, false}, known_comp = {false, false}, known_P = false, known_n = false, known_T = false, known_u = true, U = {0, 0}, Tref = 25) annotation(Placement(visible = true, transformation(origin = {60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(mixer.Out[1], out.port) annotation(Line(points = {{-12, 3.33067e-16}, {60.5634, 3.33067e-16}, {60.5634, 1.87793}, {60.5634, 1.87793}}, color = {0, 127, 255}));
  connect(input2.port, mixer.In[2]) annotation(Line(points = {{-80, -20}, {-29.5775, -20}, {-29.5775, -2.8169}, {-29.5775, -2.8169}}, color = {0, 127, 255}));
  connect(input1.port, mixer.In[1]) annotation(Line(points = {{-80, 20}, {-30.5164, 20}, {-30.5164, 1.40845}, {-30.5164, 1.40845}}, color = {0, 127, 255}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end b;