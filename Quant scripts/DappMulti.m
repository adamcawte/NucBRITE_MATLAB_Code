function Dapp = DappMulti(tracks)
DappC = [];
for i = 1:length(tracks);
    struc = msdanalyzer(2, 'µm', 'frame');
    struc = struc.addAll(tracks{i});
    struc = struc.computeMSD;
    Ds = DappCalculate(struc);
    DappC = [DappC ; {Ds}];
end
Dapp = vertcat(DappC{:})

function Da = DappCalculate(Struc)

Da = [];
for i = 1:length(Struc.msd);
    D = Struc.msd{i}(:,[2])./(0.06*(Struc.msd{i}(:,[1])));
    dapp = nanmean(D);
    Da = [Da ; dapp];
end

