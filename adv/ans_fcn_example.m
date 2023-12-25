function c = fcn_example(a, b, fcn_type)

switch fcn_type
    case 'self'
        disp('Using function itself')
        c = a+b;
    case 'sub'
        c = my_sub_fcn(a, b);
    case 'private'
        c = my_private_fcn(a, b);
    case 'nest'
        c = my_nest_fcn;
end

    function out = my_nest_fcn
        disp('Using nested function')
        out = 2*(a+b);
    end

end

function out = my_sub_fcn(a, b)
    disp('Using sub-function')
    out = sin(a) + cos(b);
end