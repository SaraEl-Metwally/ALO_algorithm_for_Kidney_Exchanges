## ALO_algorithm_for_Kidney_Exchanges
<p align="justify">
Ant Lion Optimization is a bio-inspired stochastic-based algorithm that mimics the hunting behavior of ant lions when catching its preferable prey, i.e. ants. We used ALO algorithm to solve an optimization problem called Kidney Exchanges or Kidney Paired Donation, KPD. In the kidney exchange problem, patients with end-stage renal disease have relatives that are willing to donate their kidney but they have incompatible blood/tissue types. These patients constitute donor-patient couples and create a pool of pairs that are able to exchange their kidneys based on their blood/tissue type's compatibility.</p>

<p align="justify">
  Having a set of incompatible pairs, there is a possibility that a donor of a pair <b> <i> i </i> </b> is compatible with the patient of a pair <b> <i>j</i> </b> and vice versa. This case achieves mutual benefits among donor-patient pairs. The goal of ALO kidney exchange program is maximizing the number of possible matches (feasible cycles and chains) among the incompatible pairs in a given pool, and hence enhancing the success of kidney transplantation through living donors.</p>

<p align="justify">
Ant Lion Optimization algorithm can be adopted easily for on-line exchanges and the integration of weights for hard-to-match patients, which will improve the future decisions of kidney exchange programs.</p>
<br>
<b>Copyright (C) 2017-2018, and GNU GPL, by Eslam Hamouda, Sara El-Metwally, and Mayada Tarek.</b>

## System requirements 
32-bit/64-bit Windows machine with MATLAB 2010a or higher. 

## Quick usage guide 
1. Clone the [GitHub repo](https://github.com/SaraEl-Metwally/ALO_algorithm_for_Kidney_Exchanges), e.g. with:
> `git clone https://github.com/SaraEl-Metwally/ALO_algorithm_for_Kidney_Exchanges.git`
2. Run using MATLAB `ALO_toolbox.m` in the repo directory. 
   -The following window will appear to you!
<img src="https://github.com/SaraEl-Metwally/ALO_algorithm_for_Kidney_Exchanges/blob/master/Snapshots/image(1).png" class="centerImage" width="750" height="450"/>

3. You have two options:
   - Create a new KPD pool randomlly and this will generate a graph like the following:  
   <img src="https://github.com/SaraEl-Metwally/ALO_algorithm_for_Kidney_Exchanges/blob/master/Snapshots/image(2).png" class="centerImage" width="750" height="450"/>
