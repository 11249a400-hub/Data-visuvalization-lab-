AIM:
To compare the distribution of Mathematics, Science, and English marks using a box plot in R.

ALGORITHM:
1. Load the ggplot2, tidyr, and RColorBrewer packages.
2. Create the student dataset.
3. Convert the subject columns into long format using `pivot_longer()`.
4. Create a box plot using `geom_boxplot()`.
5. Add jittered points to display individual student scores.
6. Apply a color palette and add a title and axis labels.

PROGRAM:
library(ggplot2)
library(tidyr)
library(RColorBrewer)

students <- data.frame(
  Student = c("Alice", "Bob", "Charlie", "Diana", "Eve",
              "Frank", "Grace", "Henry", "Ivy", "Jack"),
  Math = c(88, 72, 91, 65, 78, 85, 60, 95, 70, 83),
  Science = c(76, 85, 88, 70, 92, 79, 68, 90, 74, 80),
  English = c(82, 68, 75, 80, 70, 88, 72, 85, 77, 79),
  Hours = c(5.0, 4.0, 6.0, 3.0, 7.0,
            5.5, 3.5, 7.0, 4.0, 5.0)
)

long_df <- pivot_longer(
  students,
  cols = c(Math, Science, English),
  names_to = "Subject",
  values_to = "Score"
)

ggplot(long_df, aes(x = Subject, y = Score, fill = Subject)) +
  geom_boxplot(alpha = 0.7, outlier.color = "red") +
  geom_jitter(width = 0.2, alpha = 0.5) +
  scale_fill_brewer(palette = "Set2") +
  labs(
    title = "Score Distribution by Subject",
    x = "Subject",
    y = "Score"
  ) +
  theme_light() +
  theme(legend.position = "none")


RESULT:
The box plot was successfully generated to compare the distribution, spread, and median of scores across the three subjects.
