clc
clear
    CC1 = 'pr in seas_Model_avg_0000';
    CC2 = 'pr in seas_Model_avg_000';
    CC3 = 'pr in seas_Model_avg_00';
    name = {'WINTER_1951to2013','SPRING_1951to2013','SUMMER_1951to2013','AUTUMN_1951to2013'}
for j=1:4
    outfilename = char(strcat(name(j), '.gif'));
for i=1:63
    if ((i*4+j)<10)
    str = strcat(CC1,num2str(i*4+j), '.jpeg');
    else if ((i*4+j)<100)
    str = strcat(CC2,num2str(i*4+j), '.jpeg');
    else
    str = strcat(CC3,num2str(i*4+j), '.jpeg');
    end
    end
    A=imread(str);
    [I,map]=rgb2ind(A,256);
    if(i==1)
        imwrite(I,map,outfilename,'DelayTime',0.2,'LoopCount',Inf)
    else
        imwrite(I,map,outfilename,'WriteMode','overwrite','DelayTime',0.2)    
    end
end

for i=1:63
    if ((i*4+j)<10)
    str = strcat(CC1,num2str(i*4+j), '.jpeg');
    else if ((i*4+j)<100)
    str = strcat(CC2,num2str(i*4+j), '.jpeg');
    else
    str = strcat(CC3,num2str(i*4+j), '.jpeg');
    end
    end
    A=imread(str);
    [I,map]=rgb2ind(A,256);
    if(i==1)
        imwrite(I,map,outfilename,'DelayTime',0.2,'LoopCount',Inf)
    else
        imwrite(I,map,outfilename,'WriteMode','append','DelayTime',0.2)   
    end
end

end