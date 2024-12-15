new_system('Example_5');

add_block('simulink/Commonly Used Blocks/Gain','Example_5/Gain'); 
add_block('simulink/Commonly Used Blocks/Scope','Example_5/Scope'); 
add_block('simulink/Sources/Step','Example_5/Step'); 


add_line('Example_5','Step/1','Gain/1');
add_line('Example_5','Gain/1','Scope/1');

set_param('Example_5/Gain','Gain','2'); 
set_param('Example_5/Step','Time','1.5','After','3');

sampleTime = get_param('Example_5/Scope','SampleTime')

sim('Example_5');

open_system('Example_5')


save_system('Example_5')