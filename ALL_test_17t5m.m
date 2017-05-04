function [] = ALL_test_17t5m()
  n = 1000;
  t(1) = cputime;
  GACost = GA_17t5m_test(n);
  t(2) = cputime;
  PSOCost = PSO_17t5m_test(n);
  t(3) = cputime;
  diff(t)

  % SAVE COST TO DISK


  hold on;
  plot(GACost, 'b');
  plot(PSOCost, 'k');
  legend(' GA ', ' PSO ');
  title(' Iteration plot for 17 task on 5 machine ');
  hold off;
end
