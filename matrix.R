##################################
library(pheatmap)
library(Hmisc)
library(corrtable)
library(bio3d)
##################################
setwd("/home/ahmed/Downloads/align/")

#website version
infile = "matrix2.pim"
# 1. Read file
df <- read.table(infile,
                 header = FALSE,
                 row.names = 1,
                 fill = TRUE,
                 comment.char = "#",
                 blank.lines.skip = TRUE)


df <- df[complete.cases(df), ] 
df <- data.frame(df, row.names = 1) # Assign column names 
colnames(df) <- rownames(df) 
mat <- as.matrix(df) 
print(mat) 
save_correlation_matrix(mat,filename = "lauracamus.csv",digits=3,use="lower") 
#website version
infile = "matrix2.pim"
# 1. Read file
df <- read.table(infile,
                 header = FALSE,
                 row.names = 1,
                 fill = TRUE,
                 comment.char = "#",
                 blank.lines.skip = TRUE)


df <- df[complete.cases(df), ] 
df <- data.frame(df, row.names = 1) # Assign column names 
colnames(df) <- rownames(df) 
mat <- as.matrix(df) 
print(mat) 

##################################
#website version
infile = "matrix2.pim"
# 1. Read file
df <- read.table(infile,
                 header = FALSE,
                 row.names = 1,
                 fill = TRUE,
                 comment.char = "#",
                 blank.lines.skip = TRUE)


df <- df[complete.cases(df), ] 
df <- data.frame(df, row.names = 1) # Assign column names 
colnames(df) <- rownames(df) 
mat <- as.matrix(df) 
print(mat) 
# 6. Plot heatmap (saved as PDF)
paletteLength <- 90
myColor2 <- colorRampPalette(c('white', 'grey'))(paletteLength)

pheatmap(mat,
         cluster_rows = TRUE,
         cluster_cols = TRUE,
         display_numbers = round(mat, 2),
         color = myColor2)

#commandline version
infile = "matrix_file.pim"
# 1. Read file
df <- read.table(infile,
                 header = FALSE,
                 row.names = 1,
                 fill = TRUE,
                 comment.char = "#",
                 blank.lines.skip = TRUE)

df
df <- df[complete.cases(df), ]
df
colnames(df) <- rownames(df) 
df

mat <- as.matrix(df) 
print(mat) 

# 5. Convert to matrix
mat <- as.matrix(df)

# 6. Plot heatmap (saved as PDF)
paletteLength <- 90
myColor2 <- colorRampPalette(c('white', 'grey'))(paletteLength)

pheatmap(mat,
         cluster_rows = TRUE,
         cluster_cols = TRUE,
         display_numbers = round(mat, 2),
         color = myColor2)

########################################3

#in case of muscle or mafft or any other alignment 
# juest here read aligned FASTA

aln <- read.fasta("alignment.afa")

# Calculate identity matrix
mat <- seqidentity(aln)

# View matrix
print(mat)

# Save to CSV
write.csv(mat, "identity_matrix.csv")
# 6. Plot heatmap (saved as PDF)
paletteLength <- 90
myColor2 <- colorRampPalette(c('white', 'grey'))(paletteLength)

pheatmap(mat,
         cluster_rows = TRUE,
         cluster_cols = TRUE,
         display_numbers = round(mat, 2),
         color = myColor2)
