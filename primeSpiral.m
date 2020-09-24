% Matlab script to create a spiral image that has an interesting effect
% r = a + angle*b
% points: (x,y) = (r*)
close all
clear all

%vima = 0.01;
vima = 0.01/pi;
%max = 100000;
max = 1000;
dependantVar = (0:vima:max);
eConst = exp(1);
thita = eConst*dependantVar;
spiraGuideX = dependantVar.*eConst.*cos(thita);
spiraGuideY = dependantVar.*eConst.*sin(thita);

figure(4)
hold on
axis equal
counter = 1;
for jj=0:vima:max
    if (isprime(counter))
       primeSpiraX(counter) = jj*eConst*cos(eConst*dependantVar(counter));
       primeSpiraY(counter) = jj*eConst*sin(eConst*dependantVar(counter));
%       plot(primeSpiraX(counter),primeSpiraY(counter),'r.')
    else
       primeSpiraX(counter) = 0;
       primeSpiraY(counter) = 0; 
%       plot(primeSpiraX(counter),primeSpiraY(counter),'b.')
    end
    counter=counter+1;
    100*(counter/((max/vima)+1))
    pause(0.001)
end
counter = counter - 1

 figure(3)
 plot(primeSpiraX,primeSpiraY,'r.')
 hold on
 axis equal
 plot(spiraGuideX,spiraGuideY)
% 
% figure(2)
% plot(primeSpiraX,primeSpiraY,'r.')
% hold on
% axis equal
% 
% figure(1)
% hold on
% axis equal
% plot(spiraGuideX,spiraGuideY,'b.')
% plot(primeSpiraX,primeSpiraY,'r.')



% figure(1)
% plot(spiraGuideX,spiraGuideY)
% figure(2)
% plot(spiraGuideX,spiraGuideY,'*')


% clear all 
% close all
% SIZE = 1000;
% STEP = 0.00001;
% LEN  = (SIZE)/STEP;
% 
% t         = [1:(LEN+1)];
% analogiki = [0:STEP:(SIZE-STEP)];
% tetmimeni = analogiki.*sin(t);
% tetagmeni = analogiki.*cos(t);
% 
% figure(1)
% hold on
% 
% for i=1:1:LEN
%     if isprime(t(i))
%         hold on
%         plot(tetmimeni(i),tetagmeni(i),'r*')
%         
%     else
%         hold on
%         plot(tetmimeni(i),tetagmeni(i),'b*')
%         
%     end
%     progress = (i/LEN)*100
%     pause(0.000001)
% end
% %figure(2)
% %plot(tetmimeni,tetagmeni)
