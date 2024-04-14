# Matlab STREME
Repository for finding meta path motifs in heterogenous graphs.

The main function for running the algorithm is runStreme. You can rum the algorithm on your dataset by runStreme('myFile.fasta'), where myFile.txt is the name of fasta format file for input sequences. This will run the algorithm with the default settings, listed in the following.

You can change these parameters  by including them in the input, for example,  runStreme('myFile.fasta',W=8, mkvOrder=1, rvp=true) runs the algorithm with motif length set to 8,  Markov order set to 1 and reverse complement set to true. Output results are saved in matStreme.txt file in the output folder.

The most general case of running the algorithm is  
runStreme('myFile.txt',NEVAL=25, NREF=4, nRefIter=20, patience=3, evalue=false, nmotifs=0, rvp=true, ...
    mkvOrder=0, W=4,threshold=0.01, hFract=0.1, alphabet='ABCDEFGHIJKLMNO', patternFile='patternList.txt', isPWM=true);
  
  | input       | Description | 
| :---        |    :----:   |  
| **'myFile.txt'**      | input filename for fasta format data.       | 
| **NEVAL=25**  | number of initial Evaluated seeds.        | 
|  **NREF=4**        |    number of refined seeds.  |
|  **nRefIter= 20**   |    number of iterations for nestled enrichment.  |
|  **patience=3**    |    number consecutive nonsignificant motifs.   |
|  **evalue=false**   |    using evalue instead of pvalue for significance test.  |
|  **nmotifs=0**      |    number of motifs we are looking for, overwrites threshold if it's greater than 0.  |
|  **rvp=true**        |   reverse path.  |
 |  **mkvOrder=0**    |    Markov order for background and negative data generation.  |
|  **W=6**             | length of the motif.   |
|  **threshold=0.01**  |  threshold for motif pvalue obtained from hold-out testing data.   |
|  **hFract=0.1**     |   Fraction of data as hold-out.  |
|  **alphabet='ACGT'**   |     alphabet for input data.  |
