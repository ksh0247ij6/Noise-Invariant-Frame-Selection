function y=firstprune(path,fs,p,framesize,inc,perc)
%���������������ļ�
[wavin_X,fs_X,nbits_X]=wavread(path);   %�������·�������������ļ�������

%���з�ֵ��һ��
wavin_X = wavin_X/max(wavin_X);

%��һ������Ƶ��
wavin_X = normalize_Fs(wavin_X, fs_X, fs);

%ѡȡ�ȶ�������
y = chose_steady_point(wavin_X, fs, p, framesize, inc,perc);
