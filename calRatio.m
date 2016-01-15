function ratio = calRatio(Original,Compressed)
intOriginal=uint8(Original);
intCompressed=uint8(Compressed);

B0 = (size(intOriginal,1) * size(intOriginal,2)) * 8;
B1 = (size(Compressed,1) * size(Compressed,2)) * 8
Compressed(1,1)=0;
Compressed(1,2)=0;

maxElement=max(Compressed(:,2));

for i=0: size(intOriginal,1)
   if(2^i>maxElement)
       break;
    
   end
SoR = B1 * i ;

ratio = B0/SoR+B1;

end