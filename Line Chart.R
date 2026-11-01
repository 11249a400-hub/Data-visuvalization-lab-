AIM:
To visualize student score trends in Mathematics, Science, and English using a line chart with ggplot2.

ALGORITHM:
1. Load the ggplot2 and tidyr packages.
2. Create the student dataset.
3. Convert the subject columns into long format using `pivot_longer()`.
4. Plot the marks using `geom_line()` and `geom_point()`.
5. Add a title, axis labels, and legend.
6. Rotate the student names for readability.

PROGRAM:
library(ggplot2)
library(tidyr)

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
ggplot(
  long_df,
  aes(x = Student, y = Score, color = Subject, group = Subject)
) +
  geom_line(linewidth = 1) +
  geom_point(size = 3) +
  theme_minimal() +
  labs(
    title = "Student Score Trends",
    x = "Student",
    y = "Marks"
  ) +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1)
  )


RESULT:
The line chart was successfully generated to compare student marks across Mathematics, Science, and English.
