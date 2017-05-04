function [] = ALL_test_16t6m()
  n = 1000;
  t(1) = cputime;
  GACost = GA_16t6m_test(n);
  t(2) = cputime;
  PSOCost = PSO_16t6m_test(n);
  t(3) = cputime;
  diff(t)

  % SAVE COST TO DISK


  hold on;
  plot(GACost, 'b');
  plot(PSOCost, 'k');
  legend(' GA ', ' PSO ');
  title(' Iteration plot for 16 task on 6 machine ');
  hold off;
end
