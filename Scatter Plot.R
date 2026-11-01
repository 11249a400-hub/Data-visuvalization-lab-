AIM:
To analyze the relationship between hours studied and Mathematics marks using a scatter plot with a regression line.

ALGORITHM:
1. Load the ggplot2 package.
2. Create the student dataset.
3. Plot hours studied against Mathematics marks.
4. Color the points according to Mathematics marks.
5. Add a linear regression line and confidence interval.
6. Label the points with student names.
7. Add a title, axis labels, and color gradient.

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

ggplot(students, aes(x = Hours, y = Math, label = Student)) +
  geom_point(aes(color = Math), size = 4) +
  geom_smooth(
    method = "lm",
    se = TRUE,
    color = "steelblue",
    linetype = "dashed"
  ) +
  geom_text(vjust = -1, size = 3) +
  scale_color_gradient(low = "orange", high = "darkblue") +
  labs(
    title = "Hours Studied vs Math Score",
    x = "Hours Studied",
    y = "Math Score"
  ) +
  theme_minimal()


RESULT:
The scatter plot was successfully generated to examine the relationship between hours studied and Mathematics marks. A regression line was included to show the overall trend.
