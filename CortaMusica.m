
% Leitura do arquivo de áudio
[sinal, taxa_amostragem] = audioread('Mario.wav');

taxa_amostragem = 41000;

% Defina o tempo inicial e a duração desejada em segundos
tempo_inicial = 0; % segundos
duracao = 5; % segundos

% Calcula os índices correspondentes ao trecho desejado
indice_inicial = round(tempo_inicial * taxa_amostragem) + 1;
indice_final = round((tempo_inicial + duracao) * taxa_amostragem);

% Extrai o trecho  do sinal
trecho_sinal = sinal(indice_inicial:indice_final, :);

%salva o trecho do sinal em um novo arquivo
audiowrite('trecho_musical_5s.wav', trecho_sinal, taxa_amostragem);
