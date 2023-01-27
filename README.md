# GraphMPathMotif
Repository for finding meta path motifs in heterogenous graphs. 

The main function for running the algorithm is runStreme. You can rum the algorithm on your dataset by runStreme('myFile.txt'), where myFile.txt is the name of fasta format file for input sequences. This will run the algorithm with default settings of motif length=4, markov order=0, reverse path=false. You can change these parameters  by including them in the input, for example,  runStreme('myFile.txt',W=5, mkvOrder=1, rvp=true) runs the algorithm with motif length set to 5,  markov order set to 1 and reverse path set to true. Output results are saved in matStreme.txt file in the output folder. The most general case of running the algorithm is 
runStreme('myFile.txt',NEVAL=25, NREF=4, nRefIter=20, patience=3, evalue=false, nmotifs=0, rvp=true, ...
    mkvOrder=0, W=4,threshold=0.01, hFract=0.1, alphabet='ABCDEFGHIJKLMNO', patternFile='patternList.txt', isPWM=true);
  
  | input       | Description | 
| :---        |    :----:   |  
| **'myFile.txt'**      | input filename for fasta format data.       | 
| **NEVAL=25**  | number of initial Evaluated seeds.        | 
|  **'myFile.txt'**   |    input filename for fasta format data.  |
|  **NEVAL=25**      |     number of initial Evaluated seeds.  |
|  **NREF=4**        |    number of refined seeds.  |
|  **nRefIter= 20**   |    number of iterations for nesteled enrichment.  |
|  **patience=3**    |    number consecutive nonsiginificant motifs.   |
|  **evalue=false**   |    using evalue instead of pvalue for significance test.  |
|  **nmotifs=0**      |    number of motifs we are looking for, overwrites threshold if it's greater than 0.  |
|  **rvp=true**        |   reverse path.  |
 |  **mkvOrder=0**    |    markov order for background and negetive data generation.  |
|  **W=4**             | length of the motif.   |
|  **threshold=0.01**  |  threshold for motif pvalue obtained from hold-out testing data.   |
|  **hFract=0.1**     |   Fraction of data as hold-out.  |
|  **alphabet='ABCDEFGHIJKLMNO'**   |     alphabet for input data.  |
|  **patternFile='patternList.txt'**    | File containing the pattern embedded in the graph, it could be a list of W letter patterns or a list of W*L PWM matrices.  |  
|  **isPWM=true**                |        true if input pattern file is a list of PWM matrices.



