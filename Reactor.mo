model Reactor
  inner Chemical.System system(set_n = 5, use_EnergyBal = true, OpenSys = true, use_T = true, known_en = true, known_Cp = {true, true, true, true, true}, Cp_coeff_gas = {{29056.42e-3, 43.68e-3, 1e-0012, 1e-015}, {27964.33e-3, 13.237e-3, 1e-0012, 1e-015}, {26573.02e-3, 6.6578e-3, 1e-0012, 1e-015}, {47954.29e-3, 7.084e-3, 1e-0012, 1e-015}, {27710.02e-3, 2.3746e-3, -6.33e-013, 1e-015}}, Cp_coeff_aq = {0, 0, 0, 0, 0}, MW = {0, 0, 0, 0, 0}, pc = {{4600000.0}, {22064000.0}, {3494000.0}, {7374000.0}, {1296300.0}}, Tc = {{190.6}, {647.14}, {132.85}, {304.12}, {32.98}}, w = {{0.016}, {-0.217}, {0.045}, {0.225}, {-0.217}}, kij = {{0, 0.014, 0.0204, 0.0956, 0.001}, {0.014, 0, -0.474, 0.3, -0.745}, {0.0204, -0.474, 0, 1164, -0.0007}, {0.0956, 0.3, 0.1164, 0, 0.1164}, {0.001, -0.745, -0.0007, 0.1164, 0}}, known_Cv = {false, false, false, false, false}, Cv_coeff_aq = {0, 0, 0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {88, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Chemical.Specify.point Liquid(known_u = true, known_P = false, known_T = false, Tref = 298, known_U = {false, false, false, false, false}, known_H = {false, false, false, false, false}, known_X = {false, false, false, false, false}, known_comp = {false, false, false, false, false}, H = {0, 0, 0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {58, 25}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Chemical.UnitOp.REquil requil1(known_T = false, T_guess = 900, Kequ = {92.43000000000001, 52.97}, ph = "V", n_rxn = 2, coeff = {{-1, -2, 0, 1, 4}, {-1, -1, 1, 0, 3}}, H_rxn = {-164605, -205703.41}, known_Q = true, Heatflow = 402800, Isothermic = false, Temperature = 929.69, SinglePhase = true, extent_guess = {{0.34326}, {1.54865}}, output_guess = {{0.0123}, {0.087}, {0.176}, {0.039}, {0.685}}) annotation(Placement(visible = true, transformation(origin = {-2.78322, 47}, extent = {{-10.841, -17.7398}, {9.85545, 17.7398}}, rotation = 0)));
  Chemical.Specify.point Vapour(known_u = true, known_P = false, known_T = false, known_U = {false, false, false, false, false}, known_H = {false, false, false, false, false}, known_X = {false, false, false, false, false}, known_comp = {false, false, false, false, false}, Tref = 298, H = {21070.23, 21070.23, 21070.23, 21070.23, 21070.23}) annotation(Placement(visible = true, transformation(origin = {55.5, 74.5}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
  Chemical.Specify.point Feed(known_u = true, T = 1000, Tref = 298, known_U = {false, false, false, false, false}, known_H = {false, false, false, false, false}, known_n = true, known_X = {true, true, true, true, false}, known_comp = {false, false, false, false, false}, n_flow = 5, X = {0.4, 0.6, 0, 0, 0}, comp_flow = {0, 0, 0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-80, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Chemical.Specify.point Liquid1(known_u = true, known_P = false, known_T = false, Tref = 298, known_U = {false, false, false, false, false}, known_H = {false, false, false, false, false}, known_X = {false, false, false, false, false}, known_comp = {false, false, false, false, false}, H = {0, 0, 0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {59, -79}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Chemical.Specify.point Vapour1(known_u = true, known_P = false, known_T = false, known_U = {false, false, false, false, false}, known_H = {false, false, false, false, false}, known_X = {false, false, false, false, false}, known_comp = {false, false, false, false, false}, Tref = 298, H = {21070.23, 21070.23, 21070.23, 21070.23, 21070.23}) annotation(Placement(visible = true, transformation(origin = {57.5, -22.5}, extent = {{-12.5, 12.5}, {12.5, -12.5}}, rotation = 0)));
  Chemical.UnitOp.RStoic rstoic1(BC = {1, 1}, f = {0.17163, 0.774325}, known_T = false, T_guess = 929, SinglePhase = true, ph = "V", output_guess = {{0.0123}, {0.087}, {0.176}, {0.039}, {0.685}}, extent_guess = {{0.34326}, {1.54865}}, Temperature = 929, n_rxn = 2, coeff = {{-1, -2, 0, 1, 4}, {-1, -1, 1, 0, 3}}, H_rxn = {-164605, -205703.41}, known_Q = true, Heatflow = 402579, Isothermic = false) annotation(Placement(visible = true, transformation(origin = {-9.3496, -55}, extent = {{-12.8552, -21.0357}, {11.6865, 21.0357}}, rotation = 0)));
  Chemical.Specify.point Feed1(known_u = true, T = 1000, Tref = 298, known_U = {false, false, false, false, false}, known_H = {false, false, false, false, false}, known_n = true, known_X = {true, true, true, true, false}, known_comp = {false, false, false, false, false}, n_flow = 5, X = {0.4, 0.6, 0, 0, 0}, comp_flow = {0, 0, 0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-80, -55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(Feed1.port, rstoic1.In[1]) annotation(Line(points = {{-80, -55}, {-21.0361, -55}}, color = {0, 127, 255}));
  connect(rstoic1.Out[2], Liquid1.port) annotation(Line(points = {{-9.23274, -55}, {-9.36768, -55}, {-9.36768, -80.5621}, {58.548, -80.5621}, {58.548, -80.5621}}, color = {0, 127, 255}));
  connect(rstoic1.Out[1], Vapour1.port) annotation(Line(points = {{-9.23274, -55}, {-8.8993, -55}, {-8.8993, -22.0141}, {59.4848, -22.0141}, {59.4848, -22.0141}}, color = {0, 127, 255}));
  connect(Feed.port, requil1.In[1]) annotation(Line(points = {{-80, 46}, {-8.8993, 46}, {-8.8993, 47}, {-8.69641, 47}}, color = {0, 127, 255}));
  connect(requil1.Out[1], Vapour.port) annotation(Line(points = {{-2.68466, 47}, {-2.51269, 47}, {-2.51269, 75.1311}, {52.0505, 75.1311}, {52.0505, 74.5}}, color = {0, 127, 255}));
  connect(requil1.Out[2], Liquid.port) annotation(Line(points = {{-2.68466, 47}, {-2.98107, 47}, {-2.98107, 24.0773}, {54.5505, 24.0773}, {54.5505, 25}}, color = {0, 127, 255}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end Reactor;