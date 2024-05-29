##siva
# Install and load necessary libraries
if(!require(dplyr)) install.packages("dplyr")
if(!require(ggplot2)) install.packages("ggplot2")
if(!require(factoextra)) install.packages("factoextra")

library(dplyr)
library(ggplot2)
library(factoextra)

# Load the Wine dataset
url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data"
wine_data <- read.csv(url, header = FALSE)
colnames(wine_data) <- c("Class", "Alcohol", "Malic_Acid", "Ash", "Alcalinity_of_Ash", 
                         "Magnesium", "Total_Phenols", "Flavanoids", "Nonflavanoid_Phenols", 
                         "Proanthocyanins", "Color_Intensity", "Hue", "OD280_OD315", "Proline")

# Display the first few rows of the dataset
head(wine_data)

# Select features for clustering (excluding the class label)
wine_features <- wine_data %>% select(-Class)
# Display summary statistics of the selected features
summary(wine_features)

# Set seed for reproducibility
set.seed(123)
# Apply K-means clustering
kmeans_result <- kmeans(wine_features, centers = 3, nstart = 25)
# Display the K-means clustering result
kmeans_result

# Perform Principal Component Analysis (PCA) for visualization
pca_result <- prcomp(wine_features, scale. = TRUE)
# Create a data frame with PCA results and cluster assignment
pca_data <- data.frame(pca_result$x, Cluster = as.factor(kmeans_result$cluster))
# Plot the clusters
ggplot(pca_data, aes(PC1, PC2, color = Cluster)) +
  geom_point(size = 3) +
  labs(title = "K-means Clustering of Wine Data", x = "Principal Component 1", y = "Principal Component 2") +
  theme_minimal()

# Create a table to compare cluster assignment with actual classes
comparison_table <- table(Cluster = kmeans_result$cluster, Actual = wine_data$Class)
# Display the comparison table
comparison_table

# Set seed for reproducibility
set.seed(123)
# Apply K-means clustering
kmeans_result <- kmeans(wine_features, centers = 3, nstart = 25)
# Display the K-means clustering result
kmeans_result

# Perform Principal Component Analysis (PCA) for visualization
pca_result <- prcomp(wine_features, scale. = TRUE)
# Create a data frame with PCA results and cluster assignment
pca_data <- data.frame(pca_result$x, Cluster = as.factor(kmeans_result$cluster))
# Plot the clusters
ggplot(pca_data, aes(PC1, PC2, color = Cluster)) +
  geom_point(size = 3) +
  labs(title = "K-means Clustering of Wine Data", x = "Principal Component 1", y = "Principal Component 2") +
  theme_minimal()

# Create a table to compare cluster assignment with actual classes
comparison_table <- table(Cluster = kmeans_result$cluster, Actual = wine_data$Class)
# Display the comparison table
comparison_table


