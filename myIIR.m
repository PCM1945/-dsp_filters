function y = myIIR(type, fs, cutOfFreq, order)
  pkg load signal;

  wa = (2/fs) * tan(pi * (cutOfFreq/fs));

  [sb, sa] = butter(order, wa, type, 's');
  [zb, za] = bilinear(sb, sa, fs);
  figure;
  plot(zb);
  title('ZB');
  figure;
  plot(za)
  title('za')
  figure;
  freqz(zb, za, [], fs);
end
