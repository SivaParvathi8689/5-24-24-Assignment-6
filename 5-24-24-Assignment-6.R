---
editor_options: 
  markdown: 
    wrap: 72
---

# K-means Clustering on Wine Dataset

This repository contains an analysis of the Wine dataset using K-means
clustering. The dataset is obtained from the UCI Machine Learning
Repository and contains chemical analysis of wines grown in the same
region in Italy but derived from three different cultivars.

## Files

-   `kmeans_clustering.R`: The R script containing the code for the
    K-means clustering analysis.
-   `kmeans_clustering.Rmd`: The R Markdown file for the same analysis,
    which can be rendered to HTML or other formats.

## Dataset

The dataset is directly loaded from the UCI Machine Learning Repository.
It contains the following columns: - Class: Wine class (target
variable) - Alcohol - Malic_Acid - Ash - Alcalinity_of_Ash - Magnesium -
Total_Phenols - Flavanoids - Nonflavanoid_Phenols - Proanthocyanins -
Color_Intensity - Hue - OD280_OD315 - Proline

## Analysis Steps

1.  **Load the Dataset**: Load and display the first few rows of the
    dataset.
2.  **Data Preparation**: Select the features for clustering and display
    summary statistics.
3.  **Apply K-means Clustering**: Apply K-means clustering with `k=3`.
4.  **Visualize Clusters**: Visualize the clusters using the first two
    principal components.
5.  **Evaluate Clusters**: Compare the clustering results with the
    actual classes.

## Usage

1.  Clone the repository:
    `bash     git clone https://github.com/username/repository.git     cd repository`

2.  Run the R script: `bash     Rscript kmeans_clustering.R`

3.  Open and render the R Markdown file in RStudio to see the detailed
    analysis and visualizations:
    `r     rmarkdown::render("kmeans_clustering.Rmd")`

## Example Results

The K-means clustering algorithm identifies distinct groups in the Wine
dataset. The clustering results can be compared with the actual classes
to evaluate performance.

## Contributions

Feel free to fork the repository, open issues, and submit pull requests.

## License

This project is licensed under the MIT License.
