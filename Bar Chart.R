Aim:
To create a student dataset using Pandas and visualize students' Mathematics and Science 
marks using a line graph with Matplotlib.

Algorithm:

1. Start the program.
2. Import the Pandas library as pd.
3. Import the NumPy library as np.
4. Create a dataset containing student names, marks in Mathematics, Science, and English, age, and hours studied.
5. Convert the dataset into a Pandas DataFrame.
6. Display the dataset.
7. Import the Matplotlib library as plt.
8. Set the figure size to (10, 5).
9. Plot student names against Mathematics marks using a blue line.
10. Plot student names against Science marks using a green line.
11. Add a title, axis labels, and legend.
12. Display the graph.
13. Stop the program.

Python Program:

import pandas as pd
import numpy as np

# Create dataset
data = {
    "Student": ["Sai", "Sai", "Poori", "Yash", "Bunny", "Ammulu"],
    "Math": [92, 45, 66, 88, 97, 88],
    "Science": [80, 22, 33, 55, 66, 99],
    "English": [22, 33, 44, 55, 66, 87],
    "Age": [17, 18, 33, 66, 68, 77],
    "Hours_Studied": [3, 4, 5, 6, 7, 8]
}

# Create DataFrame
df = pd.DataFrame(data)

# Display dataset
print(df)

# Import Matplotlib
import matplotlib.pyplot as plt

# Set figure size
plt.figure(figsize=(10, 5))

# Plot Mathematics marks
plt.plot(
    df["Student"], df["Math"],
    marker="o", label="Math", color="blue"
)

# Plot Science marks
plt.plot(
    df["Student"], df["Science"],
    marker="s", label="Science", color="green"
)

# Add title and labels
plt.title("Student Marks Comparison")
plt.xlabel("Student Names")
plt.ylabel("Marks")

# Display legend and graph
plt.legend()
plt.grid(True)
plt.show()

Result
Thus, the student dataset was successfully created using Pandas, and the Mathematics and 
Science marks were visualized using a line graph with Matplotlib.
