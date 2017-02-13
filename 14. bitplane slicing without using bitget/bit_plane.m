function [bitplane] = bit_plane(bit_place,image)
    [r,c] = size(image);
    bitplane=zeros(r,c);
    for x = 1:r
        for y = 1:c
            inbits=de2bi(image(x,y),8,'right-msb');
            bitplane(x,y)=inbits(1,bit_place);
        end
    end
end