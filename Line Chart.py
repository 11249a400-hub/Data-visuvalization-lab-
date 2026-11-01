AIM:
To visualize and compare students' marks in Mathematics, Science, and English using a line chart with Matplotlib.

ALGORITHM:
1. Import the Pandas and Matplotlib libraries.
2. Create the student dataset using a Pandas DataFrame.
3. Plot Mathematics, Science, and English marks against student names.
4. Add markers, labels, a title, and a legend.
5. Rotate the student names for better readability.
6. Save the chart as `line_chart.png` and display it.

PROGRAM:
import pandas as pd
import matplotlib.pyplot as plt
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
plt.figure(figsize=(10, 5))
plt.plot(
    df["student"], df["math"],
    marker="o", label="Math", color="blue"
)
plt.plot(
    df["student"], df["science"],
    marker="s", label="Science", color="green"
)
plt.plot(
    df["student"], df["english"],
    marker="^", label="English", color="red"
)
plt.title("Student Score Trends", fontsize=14)
plt.xlabel("Student")
plt.ylabel("Marks")
plt.xticks(rotation=45)
plt.legend()
plt.tight_layout()
plt.savefig("line_chart.png", dpi=150)
plt.show()

RESULT:
The line chart was successfully plotted to compare students' marks in Mathematics, Science, and English. The chart was saved as `line_chart.png`.
