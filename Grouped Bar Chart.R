AIM:
To compare Mathematics, Science, and English marks for individual students using a grouped bar chart in R.

ALGORITHM:
1. Load the ggplot2 and tidyr packages.
2. Create the student dataset.
3. Convert the subject columns into long format using `pivot_longer()`.
4. Create a grouped bar chart using `geom_bar()`.
5. Display the subject bars side by side for each student.
6. Apply a color palette and add a title and axis labels.
7. Rotate the student names for readability.

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

ggplot(long_df, aes(x = Student, y = Score, fill = Subject)) +
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_brewer(palette = "Set1") +
  labs(
    title = "Scores by Student and Subject",
    x = "Student",
    y = "Score"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1)
  )


RESULT:
The grouped bar chart was successfully generated to compare the three subject marks for each student.
