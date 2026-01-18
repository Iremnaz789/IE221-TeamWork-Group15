# IE221 – Team Work 5
## Distribution Comparison and Limits of the Theorems


This project investigates when the Strong Law of Large Numbers (SLLN) and the Central Limit Theorem (CLT) work and when they fail, by analyzing five probability distributions with different tail behaviors.

---

## Course Information
- **Course:** IE221 – Probability
- **Semester:** Fall 2024–2025
- **Assignment:** Team Work 5 – Distribution Comparison and Limits of the Theorems

## Team Members
- Selen Varkara – 2311021017
- İremnaz Aytekin – 2311021042
- Begüm Rana Türkoğlu – 2311021001
- Eylül Sena Altunsaray – 2311021022

---

## Project Overview

The following distributions are analyzed throughout the project:

- **Uniform(0,1)**
- **Exponential (λ = 1)**
- **Pareto (α = 3, xₘ = 1)**
- **Pareto (α = 1.5, xₘ = 1)**
- **Cauchy (x₀ = 0, γ = 1)**

Key Finding: SLLN requires only finite mean, but CLT requires both finite mean AND variance.

For detailed theoretical background and analysis, see the full technical report in `reports/TW5_Report.pdf`.

---

## Programming Language
- **MATLAB** (R2021a or later recommended)

---

## Methodology

For each distribution, the following analyses are performed:

### Strong Law of Large Numbers (SLLN)
- Generation of at least **10,000 observations**
- Plotting of **cumulative sample mean**
- Observation of convergence behaviour

### Central Limit Theorem (CLT)
- Simulation for different sample sizes (n = 2, 5, 10, 30, 50, 100)
- **m = 1,000 replications** for each n
- Histogram of standardized sample means
- Normal **Q–Q plots** to assess convergence to normality

---

## Project Structure
```
IE221-TeamWork-Group15/
│
├── src/                          # MATLAB source code
│   ├── utils.m                   # Common functions
│   ├── uniform_exponential.m     # Uniform & Exponential
│   ├── pareto_analysis.m         # Both Pareto distributions
│   ├── cauchy_analysis.m         # Cauchy distribution
│   └── run_all_simulations.m    # Run all analyses
│
├── results/                      # Generated figures
│   ├── uniform/
│   ├── exponential/
│   ├── pareto_alpha3/
│   ├── pareto_alpha1.5/
│   └── cauchy/
│
├── reports/                      # Documentation
│   └── TW3_Report.pdf           # Full analysis report
│
└── README.md
```

---

## Usage

### Option 1: Run All Simulations (Recommended)

To execute all three simulations in sequence:
```matlab
cd src/
run_all_simulations
```

This generates all SLLN and CLT plots for the 5 distributions.

---

### Option 2: Run Individual Simulations

run('uniform_exponential.m')   % Uniform and Exponential
run('pareto_analysis.m')       % Both Pareto cases
run('cauchy_analysis.m')       % Cauchy case

---

## 📊 Key Findings

- Distributions with **finite mean and variance** (Uniform, Exponential, Pareto α = 3) satisfy both **SLLN and CLT**.
- Distributions with **finite mean but infinite variance** (Pareto α = 1.5) satisfy **SLLN but not CLT**.
- Distributions with **no finite mean or variance** (Cauchy) violate both theorems.
- Heavy-tailed distributions exhibit **slow convergence** and large fluctuations in simulations.

---

## 👥 Teamwork

This project was completed as a team effort.  
Simulation code development, theoretical analysis, result interpretation, and report writing were distributed among team members to ensure effective collaboration.

---

## 📄 Report

The final report includes:
- Introduction and theoretical background
- Distribution characteristics and moments
- SLLN and CLT simulation results
- Comparative analysis
- Discussion of theoretical assumptions
- Conclusion on the limits of classical probabilistic theorems

---

## 📝 Course Information

- **Course:** IE 221 – Probability  
- **Semester:** Fall 2024–2025  
- **Assignment:** Team Work 5


## Contact

For questions or issues related to this project, please contact any team member:

- Selen Varkara – 2311021017
- İremnaz Aytekin – 2311021042
- Begüm Rana Türkoğlu – 2311021001
- Eylül Sena Altunsaray – 2311021022

**Course:** IE221 – Probability  
**Institution:** Abdullah Gül University  
**Semester:** Fall 2024–2025

### Begum – Uniform(0,1) Results

**Strong Law of Large Numbers (SLLN):**
- Cumulative sample mean convergence to 0.5  
  (`results/figures/slln_uniform.png`)

**Central Limit Theorem (CLT):**
- Histogram of standardized sums (n = 2)  
  (`results/figures/clt_hist_n2.png`)
- Q–Q plot against standard normal (n = 2)  
  (`results/figures/clt_qq_n2.png`)

---






