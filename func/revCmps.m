function rcData=revCmps(idata, aLen)    
    rcData=idata(end:-1:1);
    rcDataCFlag=(rcData>0 & rcData<=aLen);
    rcData(rcDataCFlag)=aLen-rcData(rcDataCFlag)+1;