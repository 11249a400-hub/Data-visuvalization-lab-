AIM:
To visualize the distribution of students' Mathematics marks using a histogram and indicate the mean score.

ALGORITHM:
1. Import Pandas and Matplotlib.
2. Create the student dataset.
3. Calculate the mean of Mathematics marks.
4. Plot a histogram with five bins.
5. Add a vertical dashed line to indicate the mean.
6. Add a title, axis labels, and legend.
7. Save the histogram as `histogram.png` and display it.

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
plt.figure(figsize=(7, 5))
plt.hist(
    df["math"],
    bins=5,
    color="#9b59b6",
    edgecolor="black",
    alpha=0.8
)
math_mean = df["math"].mean()
plt.title("Distribution of Math Scores")
plt.xlabel("Score Range")
plt.ylabel("Number of Students")
plt.axvline(
    math_mean,
    color="red",
    linestyle="--",
    label=f"Mean: {math_mean:.1f}"
)
plt.legend()
plt.tight_layout()
plt.savefig("histogram.png", dpi=150)
plt.show()

RESULT:
The histogram was successfully plotted to show the distribution of Mathematics marks. A vertical dashed line indicates the mean Mathematics score. The chart was saved as `histogram.png`.
