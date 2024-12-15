try
    user_in = input('Enter input: \n');
    if user_in <=0
        error ('input ust be positive');
    end
    %disp (['the number is: ' num2str(user_in)]);
     fprintf ('the number is: %d ',user_in);
catch
    disp('ERROR');
end
