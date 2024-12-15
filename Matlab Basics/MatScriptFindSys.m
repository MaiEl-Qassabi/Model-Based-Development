Modelname= 'Test3stepGain';
new_system(Modelname);
add_block('simulink/Math Operations/Add', [Modelname '/Add']);
add_block('simulink/Sources/Step', [Modelname '/instep']);
add_block('simulink/Discrete/Unit Delay', [Modelname '/unitDelay1']);
add_block('simulink/Discrete/Unit Delay', [Modelname '/unitDelay2']);
add_block('simulink/Discrete/Unit Delay', [Modelname '/unitDelay3']);
add_block('simulink/Commonly Used Blocks/Gain', [Modelname '/Gain1']);
add_block('simulink/Commonly Used Blocks/Gain', [Modelname '/Gain2']);
add_block('simulink/Commonly Used Blocks/Gain', [Modelname '/Gain3']);
add_block('simulink/Commonly Used Blocks/Scope', [Modelname '/Scope']);
set_param([Modelname '/Add'],'inputs','++++')
add_line(Modelname,'instep/1','unitDelay1/1');
add_line(Modelname,'instep/1','Add/1');
add_line(Modelname,'unitDelay1/1','Gain1/1');
add_line(Modelname,'Gain1/1','Add/2');
add_line(Modelname,'Gain1/1','unitDelay2/1');
add_line(Modelname,'unitDelay2/1','Gain2/1');
add_line(Modelname,'Gain2/1','Add/3');
add_line(Modelname,'Gain2/1','unitDelay3/1');
add_line(Modelname,'unitDelay3/1','Gain3/1');
add_line(Modelname,'Gain3/1','Add/4');
add_line(Modelname,'Add/1','Scope/1');

open_system(Modelname);
% format short
% gcbh
% 
% ans =
% 
%   538.0001
% 
% format long
% gcbh
% 
% ans =
% 
%      5.380001220703125e+02