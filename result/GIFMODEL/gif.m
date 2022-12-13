clc
clear
    CC1 = 'M_0000';
    CC2 = 'M_000';
    CC3 = 'M_00';
for i=1:780
    if (i<10)
    str = strcat(CC1,num2str(i), '.jpeg');
    else if (i<100)
    str = strcat(CC2,num2str(i), '.jpeg');
    else
    str = strcat(CC3,num2str(i), '.jpeg');
    end
    end
    A=imread(str);
    [I,map]=rgb2ind(A,256);
    if(i==1)
        imwrite(I,map,'movefig.gif','DelayTime',0.02,'LoopCount',Inf)
    else
        imwrite(I,map,'movefig.gif','WriteMode','overwrite','DelayTime',0.02)    
    end
end

for i=1:780
    if (i<10)
    str = strcat(CC1,num2str(i), '.jpeg');
    else if (i<100)
    str = strcat(CC2,num2str(i), '.jpeg');
    else
    str = strcat(CC3,num2str(i), '.jpeg');
    end
    end
    A=imread(str);
    [I,map]=rgb2ind(A,256);
    if(i==1)
        imwrite(I,map,'movefig.gif','DelayTime',0.02,'LoopCount',Inf)
    else
        imwrite(I,map,'movefig.gif','WriteMode','append','DelayTime',0.02)   
    end
end
