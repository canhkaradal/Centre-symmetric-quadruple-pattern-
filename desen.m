function yres = desen(res)
[w,h]=size(res);
for i=1:w-3
    for j=1:h-3
    blok=res(i:i+3,j:j+3);
    bl=blok;
    r=bl(1:2,1:2); g=bl(1:2,3:4); p=bl(3:4,1:2); b=bl(3:4,3:4);
    ust1=r(:)'; alt1=b(:)';
    ust2=g(:)'; alt2=p(:)';
    a1(i)=0; a2(i)=0;
    for k=1:4
        if ust1(k)>=alt1(k)
            yres(i,j)=1;
        else
            yres(i,j)=0;
        end
        if ust2(k)>=alt2(k)
            yres(i,j)=1;
        else
            yres(i,j)=0;
        end
    end
    end
end
end