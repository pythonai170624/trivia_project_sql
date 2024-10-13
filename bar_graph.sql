import matplotlib.pyplot as plt
import numpy as np

# Data for the histogram
questions = np.arange(1, 11)  # Questions from 1 to 10
answered = [9, 8, 10, 9, 7, 8, 10, 9, 8, 7]  # Number of people who answered each question
correct = [7, 6, 8, 6, 5, 6, 8, 7, 6, 5]  # Number of correct answers
wrong = [answered[i] - correct[i] for i in range(len(answered))]  # Number of wrong answers

# Create the histogram
bar_width = 0.2
r1 = np.arange(len(questions))
r2 = [x + bar_width for x in r1]
r3 = [x + bar_width for x in r2]

plt.bar(r1, answered, color='blue', width=bar_width, edgecolor='grey', label='Answered')
plt.bar(r2, correct, color='green', width=bar_width, edgecolor='grey', label='Correct')
plt.bar(r3, wrong, color='red', width=bar_width, edgecolor='grey', label='Wrong')

# Add labels and title
plt.xlabel('Questions', fontweight='bold')
plt.ylabel('Number of Responses', fontweight='bold')
plt.title('Responses to Questions 1-10: Answered, Correct, and Wrong')
plt.xticks([r + bar_width for r in range(len(questions))], questions)

# Show the legend
plt.legend()

# Display the graph
plt.tight_layout()
plt.show()
