% S='your article is in queue';
% l=length(S);
% givstr=S;
% mystr='aeiou';
% cnt=0;
% for i=1:(l-1)
%     for j=1:length(mystr)
%         if(S(i)==mystr(j))
%             % && S(i+1)==mystr(j))
%             givstr(i+1)=[];
%             cnt=cnt+1;
%         end
%     end
% end

givstr='your article is in queue';

cpy=givstr;
% givstr=unique(givstr);
mystr='aeiou';
cnt=0;
for i=1:length(mystr)
    for j=1:length(givstr)-1
        if(givstr(j)==mystr(i))% && givstr(j+1)==mystr(i))
            cnt=cnt+1;
        end
        if(givstr(j+1)==mystr(i))
            cnt=cnt+1;
        end
        if(cnt==2)
            cpy(j+1)=[];
            cnt=0;
        end
    end
end