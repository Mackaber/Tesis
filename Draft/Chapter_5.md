# Intro

The purpose of this research was to do a benchmark, as a starting point for the comparison between algorithms. The basis for the experimentation layout was based on the one found in [ishibuchi article]. Where the researcher also establishes a comparison between Single Objective and MultiObjective algortihms, although only genetic based ones.

Likewise the same operators and mostly same parameters were used for each of the experiments, (where they applied), this means the common parameters that were shared between algorithms, which is the number of steps and the number of the population (for the population based ones) 

The first section establish  a Reference pareto front, so there is a starting point to make the comparison. From it, the second section establishes the parameters such as population and number of generations are established

Then a discussion about each individual implementation is given for each algorithm. 

The whole experimentation process is divided in three different phases, the first phase consist in the run of the algorithms without any adjustment using the parameters found in the previous step for all the algorithms that applied, the next phase is taking into account the results of the first phase of experiments, which considerations should be taken into account, especially in this section is discussed wether or not there was made a fair comparison between single objective and multi objective algorithms.. In the last phase there is a discussion of the tuning of parameters, only using the most prominent algorithms from phase one. This is because the results of the phase two weren't convincing enough, mostly because RS showed to have outperformed the rest of the algorithms, which means an additional adjustment should have been take place.

# Searching for a pareto reference front:

In order to do a comparison most of the metrics require to have an already established reference pareto front, which in a testing problem would be the real pareto front.

In order to establish a pareto front for this, the most used algorithm in the literature which is NSGAII was used with exaggerated parameters which iss 3000 population and 3000 generations, and using the established operators in order to find this front. For all the mentioned datasets.

# Searching for parameters that performed well

A fair comparison in this case is considered, 

Since this research also consists in a compariosn of single objective and multiobjective strategies the same operators and the same parameters were used for all the algorithms that had them. This means, the same number of steps or generations for all the algorithms, and the same population size for the population based algorithms.

To have a set of parameters for all of the algorithms there were run several experiments with different ccombinations of parameters for single objective algorithms and multiobjective algorithms. The idea is to use the same set of parameters for all the algorithms, with the reasoning that this means each algortihtm  will have a similar complexity and will perform in a similar quantity of time.

# Phase One

The first phase of experiments run all the algorithms with the established operators and parameters in the previous steps and using the found Pareto Front approximation for the metrics. Then for the results, the first set of single objective algorithms were compared within themeselves, and this is also the case for multiobjective algorithms, then the best algorithm for each of these two categories was taken and were compared with each other.


# Phase Two

After receiving some feedback there was the discussion if the  SOA and MOA were comparing the same objectives.. In order to prove this another set of experiments was proposed. The first one consist in Normalizing the objective functions a priori in contrast to the a posteriori normalization that was made in phase one. Then another experiment took place which consisted in building a Pareto front using each function individually with every SOA. 

For this set of experiments it was only considered the 20 and 200 problem sizes, since it was clear that for bigger sized problems Multiobjective algorithms clearly outperform SOA


# Phase Three 

This is because the results of the phase two weren't convincing enough, mostly becasue RS showed to have outperformed the rest of the algorithms, which means an additional adjustment should have been take place.

At this point, it's clear that Multi-Objective Algorithms had a significant advantage against SOA considering their perfornace. However none of the algorithms was able to beat a Random Search, which mean there should be an additional parameter tuning. For this last set of experiments, it was considered only the two other best which were MOBA and NSGAII. These were adjusted according to a set of parameters that made sense for them?,  It was considered the rule of thumb... () and the parameters from... () which in essence is a similar problem as established previously. This was only considered as a starting point, then a fine tuning phase took place. In addition there were also considered other versions of NSGAII and MOBA.