AIM:
To calculate and visualize the average marks in Mathematics, Science, and English using a bar chart.

ALGORITHM:
1. Import Pandas and Matplotlib.
2. Create the student dataset using a DataFrame.
3. Calculate the average marks for each subject.
4. Create a bar chart using the average marks.
5. Display the average value above each bar.
6. Add a title and axis labels.
7. Save the chart as `bar_chart.png` and display it.

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
subjects = ["Math", "Science", "English"]
averages = [
    df["math"].mean(),
    df["science"].mean(),
    df["english"].mean()
]
plt.figure(figsize=(7, 5))
bars = plt.bar(
    subjects,
    averages,
    color=["#3498db", "#2ecc71", "#e74c3c"],
    edgecolor="black"
)
for bar, avg in zip(bars, averages):
    plt.text(
        bar.get_x() + bar.get_width() / 2,
        bar.get_height() - 3,
        f"{avg:.1f}",
        ha="center",
        va="top",
        color="white",
        fontweight="bold"
    )
plt.title("Average Scores by Subject")
plt.ylabel("Average Marks")
plt.ylim(0, 100)
plt.tight_layout()
plt.savefig("bar_chart.png", dpi=150)
plt.show()

RESULT:
The bar chart was successfully plotted to compare the average marks of Mathematics, Science, and English. The average values were displayed on the bars, and the chart was saved as `bar_chart.png`.
