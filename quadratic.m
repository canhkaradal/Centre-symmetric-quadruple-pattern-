function histo=quadratic(res)
[w,h]=size(res);
h1=zeros(1,16); h2=zeros(1,16);
for i=1:4:w
    for j=1:4:h
    blok=res(i:i+3,j:j+3);
    bl=blok;
    r=bl(1:2,1:2); g=bl(1:2,3:4); p=bl(3:4,1:2); b=bl(3:4,3:4);
    ust1=r(:)'; alt1=b(:)';
    ust2=g(:)'; alt2=p(:)';
    a1(i)=0; a2(i)=0;
    for k=1:4
        if ust1(k)>=alt1(k)
            a1(i)=a1(i)+1*2^(4-k);
        end
        if ust2(k)>=alt2(k)
            a2(i)=a2(i)+1*2^(4-k);
        end
    end
    h1(a1(i)+1)=h1(a1(i)+1)+1;
    h2(a2(i)+1)=h2(a2(i)+1)+1;
end
histo=[h1 h2];
end
end