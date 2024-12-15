arr1={'apple','banana'};
arr2={'Apple','banana'};
arr3={'apple','banana'};

res1 =strcmp(arr1,arr2);
res2 =strcmp(arr1,arr3);

disp(['comaprison bet 1 &2: ',num2str(res1)]);
disp(['comaprison bet 1 &3: ',num2str(res2)]);

% comaprison bet 1 &2: 0  1
% comaprison bet 1 &3: 1  1