# Alignment_matrix_print_visualize
**Kindly, if you find this repo useful for your work, cite & star this repo**

**What is this script?**

[Clustal Omega](https://www.ebi.ac.uk/jdispatcher/msa/clustalo) is a great tool for aligning protein or DNA sequences.

You can use the PIM (Percent Identity Matrix) file exported from the Clustal Omega website or generate it directly using the command line:

If you use another alignment program such as [MUSCLE](https://www.ebi.ac.uk/jdispatcher/msa/muscle) , [MAFFT](https://mafft.cbrc.jp/alignment/server/index.html) or [T-Coffee](https://tcoffee.crg.eu/apps/tcoffee/do:expresso), you can still use this script — just provide their output in the appropriate section of this tool.

clustalo -i input.fasta -o output.aln --percent-id --distmat-out=output.pim --full

**What do you need?**

few libraries (Pheatmap, Hmisc,corrtable , Bio3d)

**What do you get?**

Nice alignment matrix, you can use it for publication 
