AIM:
To visualize the distribution of Mathematics marks using a histogram in R.

ALGORITHM:
1. Load the ggplot2 package.
2. Create the student dataset.
3. Plot the Mathematics marks using `geom_histogram()`.
4. Add a vertical dashed line representing the mean Mathematics score.
5. Add a title, axis labels, and theme.

PROGRAM:
library(ggplot2)

students <- data.frame(
  Student = c("Alice", "Bob", "Charlie", "Diana", "Eve",
              "Frank", "Grace", "Henry", "Ivy", "Jack"),
  Math = c(88, 72, 91, 65, 78, 85, 60, 95, 70, 83),
  Science = c(76, 85, 88, 70, 92, 79, 68, 90, 74, 80),
  English = c(82, 68, 75, 80, 70, 88, 72, 85, 77, 79),
  Hours = c(5.0, 4.0, 6.0, 3.0, 7.0,
            5.5, 3.5, 7.0, 4.0, 5.0)
)

ggplot(students, aes(x = Math)) +
  geom_histogram(
    binwidth = 8,
    fill = "#9b59b6",
    color = "black",
    alpha = 0.8
  ) +
  geom_vline(
    aes(xintercept = mean(Math)),
    color = "red",
    linetype = "dashed",
    linewidth = 1
  ) +
  labs(
    title = "Distribution of Math Scores",
    x = "Score",
    y = "Count"
  ) +
  theme_classic()


RESULT:
The histogram was successfully generated to show the distribution of Mathematics marks, with a dashed vertical line indicating the mean.
