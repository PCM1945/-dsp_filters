function myFIR(data,fs,filter_type,order)

  # cutoffFreq, type, order ,fs, input
  pkg load signal;
 % The filter type can be specified with one of the following strings:
 % "low", "high", "stop", "pass", "bandpass", "DC-0", or "DC-1". The default is
 % "low" if cutoffFreq is a scalar,
 % "pass" if cutoffFreq is a pair, or "DC-0" if cutoffFreq is a vector with
 % more than 2 elements.

% low:  23000 cf = 250
% pass: 23000 cf =  [250, 2000]
% high: 23000 cf = 2000

 %cutoff_freq = [250, 2000];
 %fs = 44100;
 %filter_type = "pass";
 %order = 23000;
 if(filter_type == "low"){
 cutoff_freq = 250;
 }elseif(filter_type == "pass"){
 cutoff_freq = [250, 2000];
 }elseif(filter_type == "high"){
 cutoff_freq = 2000;
 }

%Normalize cutoff
normal_cutoff = cutoff_freq / (0.5 * fs);
#plot(normal_cutoff)
%FIR typed Pass Filter

imp_response = fir1(order, normal_cutoff, filter_type);

freqz(imp_response, 1, data,fs);

#y = filter(imp_response, 1, input_signal);
# plot(y);
# title('filtred signal');
end
