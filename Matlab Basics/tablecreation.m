Names={'A';'B';'C'};
Ages=[15;42;35];
height=[154;167;170];
jobs= {'Engineer';'Engineer';'Engineer'};

t=table(Names,Ages,height,jobs)
subtable= t(:,{'Names','Ages'})
logindex= t(t.Ages >30,:)