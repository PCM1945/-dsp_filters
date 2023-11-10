function myIIR(data,fs,type,order)
  #type, fs, cutOfFreq, order, input
  #'low' specifies a lowpass filter with cutoff frequency Wn. 'low' is the default for scalar Wn.
  #'high' specifies a highpass filter with cutoff frequency Wn.
  #'bandpass' specifies a bandpass filter of order 2n if Wn is a two-element vector. 'bandpass' is the default when Wn has two elements.
  #'stop' specifies a bandstop filter of order 2n if Wn is a two-element vector.


  %type = 'low';
  %fs = 44100;
  %cutOfFreq = 250;
  %order = 6;
  pkg load signal;

  #high, order: 1, fs = [0 250]
  #bandpass, order: fs =  [250 2000]
  #low, order: 4 fs = [2000 20000]

  if(type == "low"){
 cutOfFreq = 250;
 }elseif(type == "bandpass"){
 cutOfFreq = [250, 2000];
 }elseif(type == "high"){
 cutOfFreq = 2000;
 }

 #[n,Wn] = buttord(passband/(fs/2), stopband/(fs/2),1,60);
  #[b,a] = butter(n,Wn);

  fa = (fs/pi) * tan(pi * (cutOfFreq/fs));
  fa
  [sb, sa] = butter(order,2*pi*fa, type, 's');
  [zb, za] = bilinear(sb, sa, 1/fs);
  freqz(zb, za,data, fs);


  #freqz(zb, za, [], fs);

  #y = filter(zb, za, input);
  #plot(y);
  #title('filtred signal');
end
