[voz, Fs] = audioread('processamentodigitaldesinais.wav');

%myFIR(voz, Fs, "low", 23000);

%myFIR(voz, Fs, "pass", 23000);

%myFIR(voz, Fs, "high", 23000);

%myIIR(voz, Fs, "low", 4);

%myIIR(voz, Fs, "bandpass", 6);

%myIIR(voz, Fs, "high", 1);

[musica, taxa_amostragem] = audioread('trecho_musical_5s.wav');

myFIR(musica, taxa_amostragem, "low", 23000);

%myFIR(musica, taxa_amostragem, "pass", 23000);

%myFIR(musica, taxa_amostragem, "high", 23000);

%myIIR(musica, taxa_amostragem, "low", 4);

%myIIR(musica, taxa_amostragem, "bandpass", 6);

%myIIR(musica, taxa_amostragem, "high", 1);
