function y = myFIR()
  # cutoffFreq, type, order ,fs, input
  pkg load signal;
 % The filter type can be specified with one of the following strings:
 % "low", "high", "stop", "pass", "bandpass", "DC-0", or "DC-1". The default is
 % "low" if cutoffFreq is a scalar,
 % "pass" if cutoffFreq is a pair, or "DC-0" if cutoffFreq is a vector with
 % more than 2 elements.

 cutoff_freq = 300;
 fs = 1000;
 filter_type = "low";
 order = 10;

%Normalize cutoff
normal_cutoff = cutoff_freq / (0.5 * fs);
figure;
plot(normal_cutoff)
%FIR typed Pass Filter

imp_response = fir1(order, normal_cutoff, filter_type);

figure
freqz(imp_response, fs, []);

#y = filter(imp_response, 1, input_signal);
# plot(y);
# title('filtred signal');
end
