AIM:
To represent the number of students scoring 85 or above in Mathematics, Science, and English using a pie chart.

ALGORITHM:
1. Create the student dataset.
2. Count the students who scored at least 85 in each subject.
3. Store the counts in a named vector.
4. Create a pie chart using `pie()`.
5. Add subject names and student counts as labels.
6. Display the pie chart with different colors.

PROGRAM:
students <- data.frame(
  Student = c("Alice", "Bob", "Charlie", "Diana", "Eve",
              "Frank", "Grace", "Henry", "Ivy", "Jack"),
  Math = c(88, 72, 91, 65, 78, 85, 60, 95, 70, 83),
  Science = c(76, 85, 88, 70, 92, 79, 68, 90, 74, 80),
  English = c(82, 68, 75, 80, 70, 88, 72, 85, 77, 79),
  Hours = c(5.0, 4.0, 6.0, 3.0, 7.0,
            5.5, 3.5, 7.0, 4.0, 5.0)
)

a_grades <- c(
  Math = sum(students$Math >= 85),
  Science = sum(students$Science >= 85),
  English = sum(students$English >= 85)
)

pie(
  a_grades,
  main = "A-Grade Distribution by Subject",
  col = c("#3498db", "#2ecc71", "#e74c3c"),
  labels = paste(
    names(a_grades),
    "\n",
    a_grades,
    "students"
  )
)


RESULT:
The pie chart was successfully generated to represent the number of students scoring 85 or above in each subject.
