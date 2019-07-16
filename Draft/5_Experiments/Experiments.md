Experiments Documentation
----

Parameters
----

- Strategy: Single-Objective
- Algorithm: Local Search
- (Fixed) Runs: 100 (Could be ~200 if there is time)
- Dataset Size: 200
- Generations/Improvement Rounds: 200 ~ 2000
- Number of Cores: 5

## For Single Objective

- Weight Vectors Values: [1.0, 1.0, 1.0, 1.0]

## For Genetics 

- Population Size: 70 ~ 210
- Mutation Probability: 1 / nVar
- Crossover Probability: 0.9


Results
----

- Mean? Found Solution: VAR / Pareto Front: file.pf
- Mean Time in ms: 23092 (of the 100~200 runs)
- Dominated Solutions vs Dominating Solutions (Comparison): file.svg
- HyperVolume?: graph.svg
- Sum of Objectives (in 100 runs): bargraph.svg




DOI: 10.1109/CEC.2006.1688438