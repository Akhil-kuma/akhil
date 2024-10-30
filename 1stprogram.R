#nstall.packages('reshape2')
library(reshape2)

df <- data.frame( Student = c("Alice", "Bob", "Charlie"), Math = c(90, 80, 70), Science =
                    c(85, 75, 65), English = c(88, 78, 68) )
df
melted_df =melt(df, id.vars = "Student", variable.name = "Subject",
                  value.name = "Score")
print(melted_df)


data =data.frame(
  ID = 1:3,
  Age = c(25, 30, 35),
  Height = c(160, 170, 180),
  Weight = c(60, 70, 80)
)
print(data)

melted_data <- melt(data, id.vars = "ID")
print(melted_data)
df_long <- data.frame(
  id = c(1, 1, 2, 2, 3, 3),
  treatment = c("A", "B", "A", "B", "A", "B"),
  value = c(5, 3, 6, 2, 7, 4))
df_long
df_wide <- dcast(df_long, id ~ treatment, value.var = "value")
print(df_wide)
df_long_dup <- data.frame(
  id = c(1, 1, 2, 2, 3, 3, 1, 1),
  treatment = c("A", "B", "A", "B", "A", "B", "A", "B"),
  value = c(5, 3, 6, 2, 7, 4, 8, 1)
)

df_wide_agg <- dcast(df_long_dup, id ~ treatment, value.var = "value",
                     fun.aggregate = mean)
print(df_wide_agg)  
  
  
df_long <- data.frame(
  id = c(1, 1, 2, 2, 3, 3),
  treatment = c("A", "B", "A", "B", "A", "B"),
  metric = c("score", "score", "score", "score", "score", "time"),
  value = c(5, 3, 6, 2, 7, 4)
)
df_long
df_wide <- dcast(df_long, id ~ treatment + metric, value.var =
                   "value")
print(df_wide)

df_long_dup <- data.frame(
  id = c(1, 1, 1, 1, 2, 2, 3, 3),
  treatment = c("A", "A", "B", "B", "A", "B", "A", "B"),
  metric = c("score", "score", "score", "score", "time", "time",
             "score", "time"),
  value = c(5, 6, 3, 4, 7, 2, 8, 9)
)
df_long_dup

df_wide_agg <- dcast(df_long_dup, id ~ treatment + metric, value.var =
                       "value", fun.aggregate = mean)
print(df_wide_agg)


df_long <- data.frame(
  id = c(1, 1, 2, 2, 3, 3),
  treatment = c("A", "B", "A", "B", "A", "B"),
  value = c(5, 3, 6, 2, 7, 4)
)
df_long

array_data <- acast(df_long, id ~ treatment, value.var = "value")
print(array_data)


df_long_dup <- data.frame(
  id = c(1, 1, 2, 2, 3, 3, 1, 1),
  treatment = c("A", "A", "B", "B", "A", "B", "A", "B"),
  value = c(5, 8, 6, 2, 7, 4, 3, 1)
)
# Reshape with aggregation function (mean)
array_data_agg <- acast(df_long_dup, id ~ treatment, value.var =
                          "value", fun.aggregate = mean)
print(array_data_agg)


  