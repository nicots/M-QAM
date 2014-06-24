function [ msg ] = generatorWiadomosci( msgLength, constSize )
%Jako parametr podajemy d³ugoœæ wiadomoœci ( liczbe bitów ) oraz rozmiar
%konstalacji 
%funkcja dla nieparzystej liczby bitów uzepe³nia wiadomoœc zerami 
if(msgLength == 0)
    msgLength = 1;
end
if(rem(msgLength,log2(constSize))==0)
    len=msgLength;
else
    len=msgLength+(log2(constSize)-rem(msgLength,log2(constSize)));
end  
msg = randi(0:1,1,len); %% generowanie losowej wiadomosci;
end

