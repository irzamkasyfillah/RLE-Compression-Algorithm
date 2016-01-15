function compressData = Compress(pic)
countVariable =1;
compressData1=zeros(10,1);
column=size(pic,2);
row= size(pic,1);

r=2;
compressData(1,1)=row;
compressData(1,2)=column;
k=1;
for j=1:column
    
    for i=1:row
      compressData1(k,1)=pic(i,j);
      k=k+1;
    end
    
end
   for k=1:size(compressData1,1)
       
      if size(compressData1,1) == k
          compressData(r,1)=compressData1(k,1);
            compressData(r,2)=countVariable;
       
      elseif compressData1(k,1)== compressData1(k+1,1)
            countVariable=countVariable+1;
            
       else
            compressData(r,1)=compressData1(k,1);
            compressData(r,2)=countVariable;
            countVariable=1;
            r=r+1;
       end 
   end

end