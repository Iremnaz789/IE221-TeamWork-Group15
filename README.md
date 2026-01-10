# IE221 – Team Work 4
## Experimental Verification of SLLN and CLT

This project experimentally verifies the **Strong Law of Large Numbers (SLLN)** and the  
**Central Limit Theorem (CLT)** using simulation methods.  
In addition, a Monte Carlo method is used to estimate the value of π, demonstrating a practical application of SLLN.

All simulations in this project are implemented using **MATLAB**.

---
## Course Information
- **Course:** IE221 – Probability
- **Semester:** Fall 2025–2026
- **Assignment:** Team Work 4 – Code Documentation and Technical Report

  
## Team Members

- Selen Varkara – 2311021017  
- İremnaz Aytekin – 2311021042  
- Begüm Rana Türkoğlu – 2311021001  
- Eylül Sena Altunsaray – 2311021022  

---

## Programming Language

- **MATLAB**

---

## Installation

## Dependencies
- MATLAB R2021a or later
- No additional toolboxes required
- Core MATLAB functionality only
  
To run the project:

1. Make sure MATLAB (R2021a or later recommended) is installed.
2. Clone the repository:
    ```bash
   git clone https://github.com/Iremnaz789/IE221-TeamWork-Group15

3. Open MATLAB and set the project root folder as the current working directory.


## Project Structure
IE221-TeamWork-GroupXX/
│
├── src/                    # MATLAB source code files
│   ├── slln_simulation.m   # SLLN simulation code
│   ├── clt_simulation.m    # CLT simulation code
│   ├── monte_carlo_pi.m    # Monte Carlo π estimation
│   └── utils.m             # Helper functions (optional)
│
├── results/
│   ├── figures/            # Generated plots
│   │   ├── slln_convergence.png
│   │   ├── clt_histograms.png
│   │   ├── clt_qqplots.png
│   │   └── pi_estimation.png
│
├── reports/
│   ├── TW3_Report.pdf
│   └── TW4_Report.pdf
│
├── README.md               # Project description and instructions
└── .gitignore              # Files to ignore

----

## Usage

Each task can be run independently from the `src/` directory.

### SLLN Simulation
Runs the Strong Law of Large Numbers simulation for a Uniform(0,1) distribution and plots
the convergence of the cumulative sample mean.

run('src/slln_simulation.m')


Output:
- Line plot showing almost sure convergence of the sample mean to μ = 0.5

---

### CLT Simulation
Runs Central Limit Theorem simulations for different sample sizes and generates histograms
and Q–Q plots of normalized sums.

run('src/clt_simulation.m')


Output:
- Histograms for different sample sizes
- Normal Q–Q plots

---

### Monte Carlo π Estimation
Estimates the value of π using random sampling and visualizes convergence.


run('src/monte_carlo_pi.m')


Output:
- Convergence plot of π estimates

All generated figures are automatically saved in:

results/figures/


---

## Simulation Parameters
- Distribution: Uniform(0,1)
- Sample sizes: n = 10, 50, 100, 500, 1000
- Number of replications (CLT): 1000

These parameters can be modified directly in the MATLAB source files.

---

## Code Documentation
- MATLAB scripts include explanatory comments for each simulation step.
- Functions (if used) contain descriptions of their purpose, inputs, and outputs.
- Inline comments are provided for complex algorithmic operations.

---

## Notes
- All simulations use independent and identically distributed samples.
- Figures are clearly labeled and saved in PNG format.
- Results demonstrate almost sure convergence (SLLN) and convergence in distribution (CLT).









