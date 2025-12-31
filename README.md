# IE221 – Team Work 3  
## Experimental Verification of SLLN and CLT

This project experimentally verifies the **Strong Law of Large Numbers (SLLN)** and the  
**Central Limit Theorem (CLT)** using simulation methods.  
In addition, a Monte Carlo method is used to estimate the value of π, demonstrating a practical application of SLLN.

All simulations in this project are implemented using **MATLAB**.

---

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

No additional libraries are required beyond standard MATLAB functionality.

To run the project:

1. Make sure MATLAB (R2021a or later recommended) is installed.
2. Clone the repository:
   ```bash
   git clone https://github.com/Iremnaz789/IE221-TeamWork-Group15

3. Open MATLAB and set the project root folder as the current working directory.


Usage

Each task can be run independently from the src/ directory.

SLLN Simulation

Runs the Strong Law of Large Numbers simulation for a Uniform(0,1) distribution and plots the cumulative mean convergence.
run('src/slln_simulation.m')

CLT Simulation

Runs Central Limit Theorem simulations for different sample sizes and generates histograms and Q-Q plots.
run('src/clt_simulation.m')

Monte Carlo π Estimation

Estimates the value of π using random sampling and visualizes convergence.
run('src/monte_carlo_pi.m')

All generated figures are automatically saved in the following directory:
results/figures/


Project Structure
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
│   ├── TW2_Report.pdf
│   └── TW3_Report.pdf
│
├── README.md               # Project description and instructions
└── .gitignore              # Files to ignore

Notes

All simulations use independent and identically distributed samples from the Uniform(0,1) distribution.

Figures are clearly labeled and saved in PNG format.

The results visually demonstrate almost sure convergence (SLLN) and convergence in distribution (CLT).




