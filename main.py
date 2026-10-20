import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

print("Hello, World python!")

matrix = np.arange(1, 10).reshape(3, 3)
print(matrix.T)

x = np.linspace(-10, 10, 100)
y = np.sin(x)
plt.plot(x, y)

plt.savefig("plot.png")
plt.show()