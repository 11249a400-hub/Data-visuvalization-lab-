AIM:
To visualize and compare the distribution of students' marks in Mathematics, Science, and English using a box plot.

ALGORITHM:
1. Import Pandas, Matplotlib, and Seaborn.
2. Create the student dataset.
3. Convert the subject columns into a long-format DataFrame using the `melt()` function.
4. Create a box plot with subjects on the X-axis and marks on the Y-axis.
5. Assign different colors to the subjects.
6. Add a title and adjust the layout.
7. Save the box plot as `boxplot.png` and display it.

PROGRAM:
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
data = {
    "student": [
        "thrisha", "vaishnavi", "dhanushka", "dhatri",
        "ravi", "bharath", "ani", "prudhvi",
        "ammu", "purushotham"
    ],
    "math": [93, 83, 74, 96, 84, 91, 98, 83, 74, 99],
    "science": [82, 94, 72, 84, 95, 83, 77, 88, 97, 88],
    "english": [84, 99, 88, 77, 83, 95, 86, 97, 83, 91],
    "Hours Studied": [5, 4, 3, 6, 4, 5, 7, 3, 2, 8]
}
df = pd.DataFrame(data)
melted = df.melt(
    id_vars="student",
    value_vars=["math", "science", "english"],
    var_name="subject",
    value_name="score"
)
plt.figure(figsize=(8, 5))
sns.boxplot(
    x="subject",
    y="score",
    data=melted,
    palette=["#3498db", "#2ecc71", "#e74c3c"]
)
plt.title("Score Distribution by Subject (Box Plot)")
plt.tight_layout()
plt.savefig("boxplot.png", dpi=150)
plt.show()

RESULT:
The box plot was successfully generated to compare the distribution of marks in Mathematics, Science, and English. The chart was saved as `boxplot.png`.
