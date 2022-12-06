clc, clear, close all; 

Years = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [2 1 130 1 ]);

Years12 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [2 1 13 1]);
Labor_force12 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [2 3 13 3]);
Employment12 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [ 2 4 13 4]);
UnEmployment12 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [ 2 5 13 5]);


Years14 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [26 1 37 1]);
Labor_force14 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [26 3 37 3]);
Employment14 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [26 4 37 4]);
UnEmployment14 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [ 26 5 37 5]);



Years16 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [50 1 61 1 ]);
Labor_force16 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [50 3 61 3 ]);
Employment16 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [50 4 61 4 ]);
UnEmployment16 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [ 50 5 61 5]);


Years18 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [74 1 85 1 ]);
Labor_force18 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [74 3 85 3 ]);
Employment18 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [74 4 85 4 ]);
UnEmployment18 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [ 74 5 85 5]);



Year20 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [98 1 109 1 ]);
Labor_force20 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [98 3 109 3 ]);
Employment20 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [98 4 109 4 ]);
UnEmployment20 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [ 98 5 109 5]);


%F_z(isnan(F_z)) = [];
Years22 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [122 1 133 1 ]);
Years22(isnan(Years22)) = [];
Labor_force22 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [122 3 133 3 ]);
Labor_force22(isnan(Years22)) = [];
Employment22 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [122 4 133 4 ]);
Employment22(isnan(Years22)) = [];
UnEmployment22 = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [ 122 5 133 5]);
UnEmployment22(isnan(Years22)) = [];

Labor_force = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [2 3 130 3]);
Employment = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [ 2 4 130 4]);
UnEmployment = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [2 5 130 5]);
UnEmployment_Rate = readmatrix("ABQ_Employment_stats_Sorted.xlsx", "Range", [2 6 130 6]);




tiledlayout(3,1);
figure(1);

A_X = categorical({'Max','Min','Mean','Std','Mean Gradient'});
A_X = reordercats(A_X,{'Max','Min','Mean','Std','Mean Gradient'});
A_Y = [max(Labor_force),max(Employment),max(UnEmployment); min(Labor_force),min(Employment),min(UnEmployment);mean(Labor_force),mean(Employment),mean(UnEmployment);std(Labor_force),std(Employment),std(UnEmployment);mean(gradient(Labor_force)),mean(gradient(Employment)),mean(gradient(UnEmployment))];
nexttile
bar(A_X,A_Y);
title("Calculated stats from the data");
legend("Labor force","Employment","UnEmployment");
ylabel("Personnel");
xlabel("Years (2012-2022)");

%middle
nexttile
plot(Labor_force);
hold on
plot(Employment);
hold on
plot(UnEmployment);
hold off
title("Local Area Unemployment Statistics");
legend("Labor force","Employment","UnEmployment");
ylabel("Personnel");
xlabel("Years (2012-2022)");

%Bottom
nexttile
plot(UnEmployment_Rate);
title("UnEmployment Rate ABQ");
legend("UnEmployment Rate");
ylabel("Percentage");
xlabel("Years (2012-2022)");


figure(2)
tiledlayout(3,1)
%Top
nexttile
G_X = categorical({'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'});
G_X = reordercats(G_X,{'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'});

plot(G_X,Labor_force12);
hold on
plot(G_X,Labor_force14);
hold on
plot(G_X,Labor_force16);
hold on
plot(G_X,Labor_force18);
hold on
plot(G_X,Labor_force20);
hold on
plot(G_X,Labor_force22);
hold off
title("ABQ Labor Force");

legend('2012','2014','2016','2018','2020','2022');

nexttile
plot(G_X,Employment12);
hold on
plot(G_X,Employment14);
hold on
plot(G_X,Employment16);
hold on
plot(G_X,Employment18);
hold on
plot(G_X,Employment20);
hold on
plot(G_X,Employment22);
hold off
title("ABQ Employment");
legend('2012','2014','2016','2018','2020','2022');



nexttile
plot(G_X,UnEmployment12);
hold on
plot(G_X,UnEmployment14);
hold on
plot(G_X,UnEmployment16);
hold on
plot(G_X,UnEmployment18);
hold on
plot(G_X,UnEmployment20);
hold on
plot(G_X,UnEmployment22);
hold off
title("ABQ UnEmployment");
legend('2012','2014','2016','2018','2020','2022');

figure(3)
B_Y = [max(UnEmployment_Rate);min(UnEmployment_Rate);mean(UnEmployment_Rate);std(UnEmployment_Rate);mean(gradient(UnEmployment_Rate))];
bar(A_X,B_Y);
ylabel("Percentage");
title("ABQ UnEmployment stats");

