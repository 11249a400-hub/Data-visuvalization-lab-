AIM:
To analyze the correlation between Mathematics, Science, English marks, and hours studied using a correlation heatmap.

ALGORITHM:
1. Import Pandas, Matplotlib, and Seaborn.
2. Create the student dataset.
3. Select the numerical columns required for analysis.
4. Calculate the correlation matrix.
5. Plot the correlation matrix using a heatmap.
6. Display the correlation values inside the heatmap.
7. Save the heatmap as `heatmap.png` and display it.

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
numeric_df = df[
    ["math", "science", "english", "Hours Studied"]
]
corr = numeric_df.corr()
plt.figure(figsize=(7, 5))
sns.heatmap(
    corr,
    annot=True,
    fmt=".2f",
    cmap="coolwarm",
    linewidths=0.5,
    vmin=-1,
    vmax=1
)
plt.title("Correlation Heatmap")
plt.tight_layout()
plt.savefig("heatmap.png", dpi=150)
plt.show()


RESULT:
The correlation heatmap was successfully generated to show the relationships between Mathematics, Science, English marks, and hours studied. The correlation coefficients were displayed in the heatmap, which was saved as `heatmap.png`.
