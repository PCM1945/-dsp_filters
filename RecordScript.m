%Dados da gravao
Fs = 44100;
t = 3;
%%
%Inicia um objeto audiorecorder com Fs, 16 bits, 1 canal (mono)
rec = audiorecorder(Fs, 16, 1);
%grava e bloqueia a janela de comandos
recordblocking(rec, t);
%dados de gravao
audio = getaudiodata(rec);
filename = "processamentodigitaldesinais.wav";
audiowrite(filename, audio, Fs);
plot(audio)
