%Rlm=[0.1 0.3  0.5 0.7 1.0 1.5 2.0 2.5 3.0 5.0 6.0 7.0 8.0 9.0 10.0 15 20 25 30 40 50 60 70 80 90];
a=0.1:0.1:1;
b=3:1:10;
c=10:1:100;
Rlm=[1,b,c];
clc
%warning off
Rl=10;
LengthRl=length(Rlm);
% for k=1:13
%     
% end
resultsVo=zeros(1,LengthRl);
resultsPF=zeros(1,LengthRl);
resultsTHD=zeros(1,LengthRl);
for k=1:LengthRl
    modelname='diode_bridge_with_capacitive_load';
    load_system(modelname);
    Rl=Rlm(k);
    k
    cs=getActiveConfigSet(modelname);
    model_cs=cs.copy;
    simOut=sim(modelname,model_cs);
    L=length(simOut.logsout{1}.Values.Data);
    results_Vo=simOut.logsout{1}.Values.Data(L)
    results_PF=simOut.logsout{2}.Values.Data(L)
    results_THD=simOut.logsout{3}.Values.Data(L)
    resultsVo(k)=results_Vo;
    resultsPF(k)=results_PF;
    resultsTHD(k)=results_THD;
end
subplot(2,2,1)
plot(Rlm,resultsVo,'Linewidth',1.5);
grid on
title('\itOutput Voltage varies with Load resistance')
xlabel('\itR_l /\Omega')
ylabel('\itU_d /V')
subplot(2,2,2)
plot(Rlm,resultsPF,'Linewidth',1.5)
grid on
title('\itPower factor varies with Load resistance')
xlabel('\itR_l /\Omega')
ylabel('\it')
subplot(2,2,3)
plot(Rlm,resultsTHD,'Linewidth',1.5)
grid on
title('\itTHD varies with Load resistance')
xlabel('\itR_l /\Omega')
ylabel('\it')


