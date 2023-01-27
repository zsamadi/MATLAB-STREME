# GraphMPathMotif
Repository for finding meta path motifs in heterogenous graphs. 

</p>
The main function for running the algorithm is runStreme. You can rum the algorithm on your dataset by runStreme('myFile.txt'), where myFile.txt is the name of fasta format file for input sequences. This will run the algorithm with default settings of motif length=4, markov order=0, reverse path=false. You can change these parameters  by including them in the input, for example,  runStreme('myFile.txt',W=5, mkvOrder=1, rvp=true) runs the algorithm with motif length set to 5,  markov order set to 1 and reverse path set to true. Output results are saved in matStreme.txt file in the output folder. The most general case of running the algorithm is 
runStreme('myFile.txt',NEVAL=25, NREF=4, nRefIter=20, patience=3, evalue=false, nmotifs=0, rvp=true, ...
    mkvOrder=0, W=4,threshold=0.01, hFract=0.1, alphabet='ABCDEFGHIJKLMNO', patternFile='patternList.txt', isPWM=true);
  </p>
 **'myFile.txt'**, input filename for fasta format data<br>

    
    
    
