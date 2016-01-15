function samepic = deCompress(pic)
g = size(pic,1);
row = pic(1,1);
column = pic(1,2);
newArray=zeros(row,column);
a=0;
countArray=1;
count=1;
 for k=2:(g)
     
     
     for o=1:pic(k,2)
         
     if(count==row+1)
        countArray=countArray+1; 
        count=1;
     end
     
     newArray(count,countArray)=pic(k,1);
     count=count+1;
     
     end
     
 end
     
     samepic=newArray;
       
 end