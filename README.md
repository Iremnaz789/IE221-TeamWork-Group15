# IE221 – Team Work 4
## Experimental Verification of SLLN and CLT

This project experimentally verifies the **Strong Law of Large Numbers (SLLN)** and the **Central Limit Theorem (CLT)** using simulation methods. In addition, a Monte Carlo method is used to estimate the value of π, demonstrating a practical application of SLLN. All simulations in this project are implemented using **MATLAB**.

---

## Course Information
- **Course:** IE221 – Probability
- **Semester:** Fall 2024–2025
- **Assignment:** Team Work 4 – Code Documentation and Technical Report

## Team Members
- Selen Varkara – 2311021017
- İremnaz Aytekin – 2311021042
- Begüm Rana Türkoğlu – 2311021001
- Eylül Sena Altunsaray – 2311021022

---

## Project Overview

This project demonstrates two fundamental theorems in probability theory through computational simulations:

- **Strong Law of Large Numbers (SLLN):** Shows that the sample mean converges almost surely to the expected value μ = 0.5 for Uniform(0,1) random variables.
- **Central Limit Theorem (CLT):** Demonstrates that normalized sums of i.i.d. random variables converge in distribution to the standard normal distribution N(0,1).
- **Monte Carlo π Estimation:** Applies SLLN principles to estimate the value of π using random sampling.

These simulations illustrate the critical difference between **almost sure convergence** (SLLN) and **convergence in distribution** (CLT), with practical implications for statistical inference and simulation methodology.

For detailed theoretical background and analysis, see the full technical report in `reports/TW4_Report.pdf`.

---

## Programming Language
- **MATLAB** (R2021a or later recommended)

---

## Installation

### Prerequisites
- MATLAB R2021a or later
- No additional toolboxes or libraries required
- Standard MATLAB functionality only

### Dependencies
This project uses only core MATLAB functions:
- `rand()` - Uniform random number generation
- `randn()` - Normal random number generation
- `plot()`, `histogram()`, `qqplot()` - Visualization functions
- `mean()`, `std()` - Statistical functions

**No external packages or toolboxes are needed.**

### Setup Instructions

1. **Clone the repository:**
```bash
   git clone https://github.com/Iremnaz789/IE221-TeamWork-Group15
   cd IE221-TeamWork-Group15
```

2. **Open MATLAB:**
   - Launch MATLAB
   - Navigate to the project root directory
   - Set it as the current working directory

3. **Verify directory structure:**
```matlab
   % The project should have the following structure:
   % IE221-TeamWork-Group15/
   % ├── src/
   % ├── results/figures/
   % ├── reports/
   % └── README.md
```

4. **The `results/figures/` directory will be automatically created by the scripts if it doesn't exist.**

---

## Project Structure
```
IE221-TeamWork-Group15/
│
├── src/                          # MATLAB source code files
│   ├── slln_simulation.m         # SLLN simulation code
│   ├── clt_simulation.m          # CLT simulation code
│   ├── monte_carlo_pi.m          # Monte Carlo π estimation
│   └── run_all_simulations.m    # Master script to run all simulations
│
├── results/
│   └── figures/                  # Generated plots (auto-created)
│       ├── slln_convergence.png
│       ├── clt_histograms.png
│       ├── clt_qqplots.png
│       └── pi_estimation.png
│
├── reports/                      # Technical reports
│   ├── TW3_Report.pdf
│   └── TW4_Report.pdf
│
├── README.md                     # Project documentation (this file)
└── .gitignore                    # Git ignore file
```

---

## Usage

### Option 1: Run All Simulations (Recommended)

To execute all three simulations in sequence:
```matlab
cd src/
run_all_simulations
```

This will:
1. Run SLLN simulation
2. Run CLT simulation
3. Run Monte Carlo π estimation
4. Save all figures to `results/figures/`
5. Display summary statistics in the console

---

### Option 2: Run Individual Simulations

Navigate to the `src/` directory and run each script separately:

#### SLLN Simulation
Demonstrates almost sure convergence of the sample mean to μ = 0.5.
```matlab
run('src/slln_simulation.m')
```

**Output:**
- Console: Convergence statistics
- Figure: `results/figures/slln_convergence.png`
- Shows: Sample mean vs. number of observations

---

#### CLT Simulation
Demonstrates convergence in distribution to N(0,1) for standardized sums.
```matlab
run('src/clt_simulation.m')
```

**Output:**
- Console: Normality test results for each sample size
- Figures:
  - `results/figures/clt_histograms.png` (histograms with N(0,1) overlay)
  - `results/figures/clt_qqplots.png` (Q-Q plots)
- Shows: How standardized sums approach normal distribution as n increases

---

#### Monte Carlo π Estimation
Estimates π using random sampling in a unit square.
```matlab
run('src/monte_carlo_pi.m')
```

**Output:**
- Console: Final π estimate and error
- Figure: `results/figures/pi_estimation.png`
- Shows: Convergence of π estimate vs. number of samples

---

## Simulation Parameters

All simulations use the following default parameters (can be modified in source files):

### Common Parameters
- **Distribution:** Uniform(0,1)
- **Random seed:** Set for reproducibility (can be commented out for different results)

### SLLN Simulation
- **Maximum n:** 10,000
- **Single replication:** One long sample path

### CLT Simulation
- **Sample sizes (n):** [10, 50, 100, 500, 1000]
- **Number of replications:** 1,000 per sample size
- **Standardization:** Z = (X̄ - μ) / (σ/√n)

### Monte Carlo π Estimation
- **Number of points:** 100,000
- **Method:** Random points in [0,1] × [0,1], count those inside unit circle

**To modify parameters:** Edit the corresponding `.m` files in the `src/` directory.

---

## Example Output

### Console Output

#### SLLN Simulation
```
==================================================
   STRONG LAW OF LARGE NUMBERS SIMULATION
==================================================

Running SLLN simulation with n = 10000 samples...

Convergence Analysis:
---------------------
Sample size (n):           10000
Final sample mean:         0.5012
True mean (μ):            0.5000
Absolute error:           0.0012
Relative error:           0.24%

Convergence achieved at approximately n = 5000
(sample mean within 0.01 of true mean)

Figure saved: results/figures/slln_convergence.png

Simulation complete.
==================================================
```

#### CLT Simulation
```
==================================================
   CENTRAL LIMIT THEOREM SIMULATION
==================================================

Running CLT simulation...
Number of replications: 1000
Sample sizes: [10, 50, 100, 500, 1000]

Results for each sample size:
------------------------------

n = 10:
  Mean of Z: -0.0123
  Std of Z:  1.0456
  Skewness:  0.1234
  Kurtosis:  2.8901

n = 50:
  Mean of Z: 0.0045
  Std of Z:  0.9987
  Skewness:  -0.0456
  Kurtosis:  3.0234

n = 100:
  Mean of Z: -0.0012
  Std of Z:  1.0023
  Skewness:  0.0123
  Kurtosis:  2.9876

n = 500:
  Mean of Z: 0.0008
  Std of Z:  0.9998
  Skewness:  -0.0045
  Kurtosis:  3.0012

n = 1000:
  Mean of Z: -0.0003
  Std of Z:  1.0001
  Skewness:  0.0012
  Kurtosis:  2.9998

Figures saved:
- results/figures/clt_histograms.png
- results/figures/clt_qqplots.png

Simulation complete.
==================================================
```

#### Monte Carlo π Estimation
```
==================================================
   MONTE CARLO π ESTIMATION
==================================================

Running Monte Carlo simulation with 100000 points...

Final Results:
--------------
Estimated π:              3.14236
True π:                   3.14159
Absolute error:           0.00077
Relative error:           0.025%

Convergence milestones:
- At n = 1000:    π ≈ 3.124 (error: 0.556%)
- At n = 10000:   π ≈ 3.138 (error: 0.113%)
- At n = 100000:  π ≈ 3.142 (error: 0.025%)

Figure saved: results/figures/pi_estimation.png

Simulation complete.
==================================================
```

---

### Expected Figures

All figures are automatically saved in `results/figures/` with the following characteristics:

#### 1. `slln_convergence.png`
- **Type:** Line plot
- **X-axis:** Number of observations (n)
- **Y-axis:** Cumulative sample mean
- **Features:**
  - Sample mean trajectory converging to μ = 0.5
  - Horizontal line at μ = 0.5 (true mean)
  - Demonstrates almost sure convergence
  - Single sample path

#### 2. `clt_histograms.png`
- **Type:** Multiple subplots (5 histograms)
- **Shows:** Standardized sample means for n = [10, 50, 100, 500, 1000]
- **Features:**
  - Normalized histograms of Z = (X̄ - μ)/(σ/√n)
  - Overlaid N(0,1) probability density curve (red line)
  - Shows convergence to normal distribution as n increases
  - Based on 1000 replications per n

#### 3. `clt_qqplots.png`
- **Type:** Multiple subplots (5 Q-Q plots)
- **Shows:** Quantile-quantile plots for each sample size
- **Features:**
  - Theoretical normal quantiles vs. sample quantiles
  - 45-degree reference line
  - Points approach line as n increases
  - Visual test of normality

#### 4. `pi_estimation.png`
- **Type:** Line plot
- **X-axis:** Number of random points
- **Y-axis:** Estimated value of π
- **Features:**
  - π estimate trajectory
  - Horizontal line at π = 3.14159 (true value)
  - Demonstrates convergence via SLLN
  - Error bounds (optional)

---

## Results Summary

Based on our simulations (detailed analysis in `reports/TW4_Report.pdf`):

### SLLN Results
- **Convergence:** Sample mean reaches within 1% of μ = 0.5 at approximately n = 5,000
- **Type:** Almost sure convergence (single sample path)
- **Practical implication:** A single long run is sufficient to estimate the mean

### CLT Results
- **Convergence:** Distribution is approximately normal at n ≥ 100
- **Type:** Convergence in distribution (requires many replications)
- **Practical implication:** For inference about means, n ≥ 30-100 is typically sufficient

### Monte Carlo π Estimation
- **Final estimate:** π ≈ 3.14236 (at n = 100,000)
- **Error:** < 0.03% relative error
- **Convergence rate:** Error decreases proportionally to 1/√n

### Key Finding
**"How large should n be?"**
- For **SLLN** (estimating means): n ≥ 5,000 for high precision
- For **CLT** (normal approximation): n ≥ 100 for most applications
- The difference reflects the stronger convergence guarantee of SLLN

---

## Code Documentation

All MATLAB scripts include comprehensive documentation:

### Function-level Documentation
- **Purpose:** Clear description of what each script does
- **Inputs:** Description of parameters (if applicable)
- **Outputs:** Generated figures and console output
- **Example usage:** How to run the script

### Inline Comments
- Explanatory comments for each major step
- Complex algorithms are broken down with detailed comments
- Variable names are descriptive and meaningful

### Code Style
- Consistent naming conventions (camelCase for variables)
- Clear section separators
- Modular code structure
- No unnecessary or dead code

**Example from `slln_simulation.m`:**
```matlab
%% Strong Law of Large Numbers Simulation
% This script demonstrates the SLLN for Uniform(0,1) random variables.
% It generates a single long sequence and plots the convergence of the
% cumulative sample mean to the true mean μ = 0.5.
%
% Output:
%   - Console: Convergence statistics
%   - Figure: Sample mean vs. number of observations
%   - Saved as: results/figures/slln_convergence.png

% Set parameters
n = 10000;              % Number of samples
mu_true = 0.5;         % True mean of Uniform(0,1)

% Generate random samples
rng(42);               % Set seed for reproducibility
X = rand(n, 1);        % Generate n uniform random variables

% Calculate cumulative mean
cumulative_mean = cumsum(X) ./ (1:n)';  % Running average

% [Rest of code with detailed comments...]
```

---

## Theoretical Background (Summary)

### Strong Law of Large Numbers (SLLN)
- **Statement:** For i.i.d. random variables X₁, X₂, ... with E[Xᵢ] = μ, the sample mean X̄ₙ converges almost surely to μ as n → ∞
- **Convergence type:** Almost sure convergence (probability 1)
- **Interpretation:** A single long sample path will converge to the true mean
- **Mathematical notation:** P(limₙ→∞ X̄ₙ = μ) = 1

### Central Limit Theorem (CLT)
- **Statement:** For i.i.d. random variables with mean μ and variance σ², the standardized sum Zₙ = (X̄ₙ - μ)/(σ/√n) converges in distribution to N(0,1)
- **Convergence type:** Convergence in distribution
- **Interpretation:** The distribution of standardized means approaches normality
- **Mathematical notation:** Zₙ →ᵈ N(0,1)

### Key Difference
- **SLLN:** Almost sure convergence (stronger) - focuses on individual sample paths
- **CLT:** Convergence in distribution (weaker) - focuses on the shape of distributions
- **Practical impact:**
  - SLLN: One long simulation is sufficient (line graph)
  - CLT: Many replications are needed (histogram/Q-Q plot)

For complete mathematical derivations and detailed analysis, see `reports/TW4_Report.pdf`.

---

## Troubleshooting

### Common Issues

**Issue:** "Undefined function or variable"  
**Solution:** Ensure you're in the project root directory and use `run('src/scriptname.m')`

**Issue:** Figures not saving  
**Solution:** Check if `results/figures/` directory exists and MATLAB has write permissions

**Issue:** Out of memory error  
**Solution:** Reduce simulation parameters (sample sizes or replications) in the source files


## Notes and Best Practices

- **Reproducibility:** All simulations use fixed random seeds (`rng(42)`) for reproducible results. Comment out `rng()` commands for different random realizations.

- **Independence:** All samples are generated as independent and identically distributed (i.i.d.) random variables, which is essential for SLLN and CLT to hold.

- **Visualization:** All figures are saved in high-resolution PNG format (300 DPI) with clear labels, titles, and legends.

- **Performance:** Simulations are optimized using vectorized MATLAB operations. Avoid using loops where possible.

- **Modifications:** To change simulation parameters, edit the corresponding variables at the beginning of each script (clearly marked with comments).



---

## Contact

For questions or issues related to this project, please contact any team member:

- Selen Varkara – 2311021017
- İremnaz Aytekin – 2311021042
- Begüm Rana Türkoğlu – 2311021001
- Eylül Sena Altunsaray – 2311021022

**Course:** IE221 – Probability  
**Institution:** Abdullah Gül University  
**Semester:** Fall 2024–2025


---



## Quick Start Guide

**First time running the project?**

1. Open MATLAB
2. Navigate to project folder: `cd path/to/IE221-TeamWork-Group15`
3. Run: `run('src/run_all_simulations.m')`
4. Check `results/figures/` for output plots
5. Read `reports/TW4_Report.pdf` for detailed analysis

**That's it! 🎉**


