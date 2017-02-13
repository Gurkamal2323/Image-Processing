a = [167 133 111
    144 140 135
    159 154 148]; %suppose a matrix of pixels
b = bitget(a,1); %get lowest order bit of all pixels
%bitget() is a function used to fetch a bit from the specified position for
%all pixels
b
b = bitget(a,8);%get highest order bit of all pixels
b