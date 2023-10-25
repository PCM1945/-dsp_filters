package load signal;
function y = myFIR(cutoffFreq, type, fs, f0, f1)
 % The filter type can be specified with one of the following strings:
 % "low", "high", "stop", "pass", "bandpass", "DC-0", or "DC-1". The default is
 % "low" if cutoffFreq is a scalar,
 % "pass" if cutoffFreq is a pair, or "DC-0" if cutoffFreq is a vector with
 % more than 2 elements.

  f =  [cutoffFreq]/(fs/2);
  n = round(order) - 1;
  delta = f0-f1;
  db = 60;
  order = db*fs/(22*delta)

  return fir1(order, f, type)

