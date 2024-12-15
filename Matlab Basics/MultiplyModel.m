function MultiplyModel(ModelName,x)

new_system(ModelName);
add_block('built-in/Subsystem',[ModelName '/Multiplybyx']);
%add_block('simulink/Math Operations/Product',[ModelName '/Multiplybyx/Product']);
add_block('simulink/Commonly Used Blocks/Gain', [ModelName '/Multiplybyx/Gain1']);
add_block('simulink/Sources/In1',[ModelName '/Multiplybyx/NumberOne']); 
%add_block('simulink/Sources/In1',[ModelName '/Multiplybyx/NumberTwo']);
add_block('simulink/Sinks/Out1',[ModelName '/Multiplybyx/result']);
add_block('simulink/Sinks/Display',[ModelName '/Multiplybyx/Display']);
set_param([ModelName '/Multiplybyx/Gain1'],'Gain', num2str(x));
add_line([ModelName '/Multiplybyx'],'NumberOne/1','Gain1/1');
 add_line([ModelName '/Multiplybyx'],'Gain1/1','Display/1');
 add_line([ModelName '/Multiplybyx'],'Gain1/1','result/1');


open_system(ModelName);


end
