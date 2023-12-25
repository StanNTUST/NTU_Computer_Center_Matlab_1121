function out = fcn_cmp(a,b,fcntype)

switch fcntype
    case 'private'
        out=myadd1(a+b);
    case 'sub' 
        out=my_sub(a+b);
    case 'nest'
        out=my_nest();
    otherwise
        disp('unknown')
        return
end

    function out=my_nest()
        out=2*a+3*b;
    end
end
function o= my_sub(in)
    o=in*2;
end