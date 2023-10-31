function y = myIIR()
  #type, fs, cutOfFreq, order, input
  type = 'low';
  fs = 1000;
  cutOfFreq = 200;
  order = 4;

  pkg load signal;

  fa = (fs/pi) * tan(pi * (cutOfFreq/fs));

  [sb, sa] = butter(order, fa, type, 's');
  [zb, za] = bilinear(sb, sa, 1/fs);

  freqz(zb, za, [], fs);

  #y = filter(zb, za, input);
  #plot(y);
  #title('filtred signal');
end
