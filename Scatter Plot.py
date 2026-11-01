AIM:
To visualize the relationship between hours studied and Mathematics marks using a scatter plot.

ALGORITHM:
1. Import Pandas and Matplotlib.
2. Create the student dataset.
3. Plot hours studied on the X-axis and Mathematics marks on the Y-axis.
4. Use the Mathematics marks to determine the point colors.
5. Annotate each point with the corresponding student's name.
6. Add a color bar, title, and axis labels.
7. Save the plot as `scatter.png` and display it.

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
plt.figure(figsize=(8, 5))
scatter = plt.scatter(
    df["Hours Studied"],
    df["math"],
    c=df["math"],
    cmap="viridis",
    s=100,
    edgecolors="black"
)
for i, name in enumerate(df["student"]):
    plt.annotate(
        name,
        (
            df["Hours Studied"].iloc[i],
            df["math"].iloc[i]
        ),
        textcoords="offset points",
        xytext=(5, 5),
        fontsize=8
    )
plt.colorbar(scatter, label="Math Score")
plt.title("Hours Studied vs Math Score")
plt.xlabel("Hours Studied per Day")
plt.ylabel("Math Score")
plt.tight_layout()
plt.savefig("scatter.png", dpi=150)
plt.show()

RESULT:
The scatter plot was successfully created to visualize the relationship between hours studied and Mathematics marks. Each point was labeled with the student's name, and the plot was saved as `scatter.png`.
