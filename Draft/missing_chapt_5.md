Missing parts
-----

# Intro:



# Details per implementa4tion:

- Since this part of the research is only considered as a starting point, the default values and additional configurations for all the algorithms were left for each experiment.

- In the following section, these default additional configurations are described in detail.

## Single Objective Specific parameters:
    -> one observation: the a posteriori? normalization of the objectives


# Phase One:

- Single Objectives
- Multiobjectives
- Both

## Results

-> Mention THIS:

As indicated by [https://link.springer.com/book/10.1007/978-1-4419-9182-9] the performance is sensitive to the value of the population in the case of the genetic algorithms, if the population is too large, then it is essentially pure random search, so in essence, the parameters of an algorithm outperforming random search should be considered as an ideal size for the population.

- Also mention that is clear that MOA outperformed SOA.
- And the separation between them grew as the problem size also got higher, this is a similar behavior seen in [ishibuchi]

# Phase Two:

-> Feedback about the posteriori normalization

## Results

- After the experiments ran, it was noted that even after the pareto front construction none of the algorithms were able to outperform MOAs

# Phase Three

## Results

- NSGAII was finally able to outperform RS using X parameters with an improvement in its Hypervolume.