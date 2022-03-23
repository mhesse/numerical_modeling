## Course Description

Covers numerical solution of dynamical problems arising in the solid earth geosciences. Entails development of individual codes in Matlab and application of codes to understanding heat transfer, wave propagation, elastic, and viscous deformations. Requires familiarity with Matlab. 

### Previous course projects:
<img src="images/Vignette_GEO325J_2018.png" alt="hi" class="inline"  width="150" height="150"/>  <img src="images/Vignette_GEO325M_2019.png" alt="hi" class="inline"  width="150" height="150"/>  <img src="images/Vignette_GEO325M_2020.jpg" alt="hi" class="inline"  width="150" height="150"/>  <img src="images/Vignette_GEO325M_2021.png" alt="hi" class="inline"  width="150" height="150"/>

The course content will be guided by a current research problem that typically leads to a scientific publication within the following year. In past classes we have worked on the following problems:

* [Spring 2018](Spring2018.md): Impact-induced cryovolcanism in Occator Crater on dwarf planet Ceres [[paper 1]](https://doi.org/10.1029/2018GL080327) [[paper 2]](https://www.nature.com/articles/s41550-020-1168-2)

* [Spring 2019](Spring2019.md): Transport of surface oxidants through Europa's ice shell [[paper 1]](https://agupubs.onlinelibrary.wiley.com/doi/abs/10.1029/2021GL095416)

* [Spring 2020](Spring2020.md): Convective upwelling in Europa's ice shell [[paper 1]](https://doi.org/10.1016/j.epsl.2021.116886) [[paper 2]](https://www.sciencedirect.com/science/article/pii/S2352340921003632?via%3Dihub)

* [Spring 2021](Spring2021.md): Mars groundwater response to impact cratering

* Spring 2022: Two-phase convection in Europa's ice shell - more soon!

### Office hours
[when2meet](https://www.when2meet.com/?14235007-JQOrx)

Mon 4-5pm and Wed 4-5pm: [Zoom ID 983 3529 1432](https://utexas.zoom.us/j/98335291432?pwd=aUlMUXl5S3BvRFBDc2ZkWTFkSDZrdz09) (password in email or on [Canvas](https://utexas.instructure.com/courses/1326622))

### Additional course websites:
* [Piazza](https://piazza.com/utexas/spring2022/geo325m398m/home) - Discussion board
* [Matlab Grader](https://grader.mathworks.com/courses/67410-geo-325m-398m-numerical-modeling-2022) - Homework (need accept email!)
* [Zoom ID 983 3529 1432](https://utexas.zoom.us/j/98335291432?pwd=aUlMUXl5S3BvRFBDc2ZkWTFkSDZrdz09) - Class (password in email or on [Canvas](https://utexas.instructure.com/courses/1326622))

### Matlab basics:
Here are some LiveScripts I prepared for the first class in 2018 that didn't have a Matlab prerequisite. If you don’t have much Matlab experience, please look through them. Vectorized programming is a particularly important topic.
1. [demo_arrays.mlx](matlab/demo_arrays.mlx) [[pdf]](matlab/demo_arrays.pdf)
2. [demo_functions.mlx](matlab/demo_functions.mlx) [[pdf]](matlab/demo_functions.pdf)
3. [demo_control_flow.mlx](matlab/demo_control_flow.mlx) [[pdf]](matlab/demo_control_flow.pdf)
4. [demo_matlab_functions.mlx](matlab/demo_matlab_functions.mlx) [[pdf]](matlab/demo_matlab_functions.pdf)
5. [demo_plotting.mlx](matlab/demo_plotting.mlx) [[pdf]](matlab/demo_plotting.pdf)
6. [demo_vectorized_programing.mlx](matlab/demo_vectorized_programing.mlx) [[pdf]](matlab/demo_vectorized_programing.pdf)
7. [demo_odds_ends.mlx](matlab/demo_odds_ends.mlx) [[pdf]](matlab/demo_odds_ends.pdf) (structures, logical indexing, anonymous functions)

Below are two files that I have sometimes used for the demos in class. If you put them into the folder with class files you should have no problem.
* [marc_colors.m](matlab/marc_colors.m)
* [set_demo_defaults.m](matlab/set_demo_defaults.m)

## This years course project
In spring 2022 we will develop a model for two-phase convection in Europa's ice shell. Europa is one of the Galilean moons of Jupiter. Tidal heating due to Jupiter's gravity leads to melting and the persistence of an internal ocean that might harbor life [[Nasa video]](https://www.youtube.com/watch?v=_9AYw2EQm8s). This year we will explore the effect of tidal heating on Europa's ice shell, where it leads to partial melting and the formation of a dense brine. This leads to complex two-phase (Darcy-Stokes) convection where warm buoyant ice rises and dense brine percolates downwards. To date these dynamics are largely unexplored but have the potential to dramatically thin the ice shell and hence our ability to probe the internal ocean. 

## 1D Numerics - Poisson Equation
### Lecture 1 (Jan 18): Course Project and Conservation Laws
* Lecture: [[pdf]](spring2022/GEO_398M_Lecture1_2022.pdf) [[rec]](https://utexas.zoom.us/rec/share/ZC3fuoVlPL-64GgAdB2VDGw38-8Dv6wa3GnVMF9T1m40Vt4dLtnDJ5I2pHO5gTcs.CvI6EhPyAD1Gb9sw)
* Notes: [Introduction to the course](spring2022/CourseIntro.pdf), [Course project description](spring2022/ClassProject_2022.pdf), [Introduction to porous media](modules/PorousMediaIntro.pdf)

### Lecture 2 (Jan 20): Balance laws
* Lecture: [[pdf]](spring2022/GEO_398M_Lecture2_2022.pdf) [[rec]](https://utexas.zoom.us/rec/share/G8PkRKzPd7L1wO3m89pzvgVfVPrwti2MRLNw52JR8ue_PWUdZJjCMdlOCn1m6fnK.HOsXzWf9tTRiiziu)
* Notes: [Balance laws](modules/BalanceLaws.pdf), [Mass balance](spring2022/FlowEquations.pdf), [Incompressible Flow](spring2022/IncompressibleFlow.pdf)

### Lecture 3 (Jan 25): Introduction to numerics
* Lecture: [[pdf]](spring2022/GEO_398M_Lecture3_2022.pdf) [[rec]](https://utexas.zoom.us/rec/share/cuSTWpCRZuEgqH_v1prt2AYZCiD4COOTj_DM76pYJipwvwtpEHRGHNf1bM-kDJDS.FDQIx6h5lD0Ujps3?startTime=1643125864000)
* Notes: Conservative Finite Differences [[pdf]](spring2022/ConservativeFiniteDifferences.pdf)
* LiveScripts: Finite differences [[Script]](spring2022/demo_intro_numerics.mlx) [[pdf]](spring2022/demo_intro_numerics.pdf), Conservative FD [[Script]](spring2022/demo_conservative_finite_differences.mlx) [[pdf]](spring2022/demo_conservative_finite_differences.pdf)

### Lecture 4 (Jan 27): Discrete Operators
* Lecture: [[pdf]](spring2022/GEO_398M_Lecture4_2022.pdf) [[rec]](https://utexas.zoom.us/rec/share/MWe5gSITHUHgY91glIQz0O3xhWzoQzn2mIfZlvOUO-s6W0K0tgeKnBFwbdPkfJpc.ntXR2ydzN0QYMcFI?startTime=1643298097000)
* Notes: [Discrete Operators](spring2022/DiscreteOps1D.pdf)
* LiveScripts: Discrete Operators [[Script]](spring2022/demo_testing_ops.mlx) [[pdf]](spring2022/demo_testing_ops.pdf)

### Lecture 5 (Feb 1): Shallow Aquifer Models
* Lecture: [[pdf]](spring2022/GEO_398M_Lecture5_2022.pdf) [[rec]](https://utexas.zoom.us/rec/share/fduSIuEqE4LRpRfQfxm7hFLrZp3uAKoy6kkb_AHadAP-GusPfA5r6gRTUapERJf7.vlHh0ueBcplMN91u?startTime=1643729541000)
* Notes: Shallow Aquifer Models [[pdf]](spring2022/ShallowAquiferModel.pdf) 
* LiveScript: Danube-Tisza Interfluve [[Script]](spring2022/DanubeTiszaInterfluve.mlx) [[pdf]](spring2022/DanubeTiszaInterfluve.pdf)

### Lecture 6 (Feb 3): Dirichlet Boundary Conditions
* Lecture: [[pdf]](spring2022/GEO_398M_Lecture6_2022.pdf) [[rec]](https://utexas.zoom.us/rec/share/k__2O9bjxKuCvgMOFAS5nusMf6OVGzbXDmQVN_nk8qsyYh1JrjLiRDM4SMMuAuGb.0XbhkbeWvggc9mNo?startTime=1643902836000)
* Notes: [Homogeneous BCs](spring2022/BC_Dirichlet_homo.pdf), [Heterogeneous BCs](spring2022/BC_Dirichlet_hetero.pdf)
* LiveScripts: 

### Lecture 7 (Feb 8): Effective conductivity of layered media
* Lecture: [[pdf]](spring2022/GEO_398M_Lecture7_2022.pdf) [[rec]](https://utexas.zoom.us/rec/share/jv12YhSx_0dMTHgtgG4b92Ru7o-qzLunEcwJ_TOt3wO3hTAJeGbvh9_zu6pfnaq0.KoIeSrj5pg7eplbM?startTime=1644335907000)
* Notes: [Layered media](spring2022/LayeredMedia.pdf)
* LiveScripts: Layered Media [[Script]](spring2022/demo_layered_media.mlx) [[pdf]](spring2022/demo_layered_media.pdf)

### Lecture 8 (Feb 10): Discretizing heterogenous coefficients
* Lecture: [[pdf]](spring2022/GEO_398M_Lecture8_2022.pdf) [[rec]](https://utexas.zoom.us/rec/share/dTZUGucY7USZBiEm2plZI1h7azdjYTjGNbCywNMXpjOAzSm97ZEu4J9p9IiQBhMP.BuqLuN86EzR7gF3t)
* Notes: [Heterogeneous coefficients](spring2022/Variable_coefficients_2022.pdf)
* LiceScripts: Heterogeneous coefficients [[Script]](spring2022/demo_heterogeneous_coefficients.mlx) [[pdf]](spring2022/demo_heterogeneous_coefficients.pdf)

### Lecture 9 (Feb 15):  Fluxes and Flux Boundary condition
* Lecture: [[pdf]](spring2022/GEO_398M_Lecture9_2022.pdf) [[rec]](https://utexas.zoom.us/rec/share/ssLh3Bb2m0TeudAbBfCa1yzf8-sb1EszJYXr6RuzSx7yxZka_b4R76kf-6vu6j7Y.yIrbsXVRY49s_EHF)
* Notes: [Neumann BC's](spring2022/BC_Neumann2022.pdf), [Flux computation](spring2022/ComputeFluxes2022.pdf)
* LiveScripts: Neumann BCs [[script]](spring2022/demo_NeumannBCs.mlx) [[pdf]](spring2022/demo_NeumannBCs.pdf), Fluxes [[script]](spring2022/demo_comp_flux_res.mlx) [[pdf]](spring2022/demo_comp_flux_res.pdf)

## 1D Melt migration (simplified) 

### Lecture 10 (Feb 17): Melt migration intro
* Lecture: [[pdf]](spring2022/GEO_398M_Lecture10_2022.pdf) [[rec]](https://utexas.zoom.us/rec/share/r4LonNnXLziDgaOfJsZXz38589LAatrAQ0fu2ryogObllfFyvmNtWHcMisfY2XaA.l2CrD7pgIJZWjGm6)
* Notes: [Simplified melt migration model](spring2022/Melt_Migration_dim.pdf)

### Lecture 11 (Feb 22): Scaling melt migration equations
* Lecture: [[pdf]](spring2022/GEO_398M_Lecture11_2022.pdf) [[rec]](https://utexas.zoom.us/rec/share/h6cEXNYJixi05wFiOxrJTzYinwcva1AfhmOoHaW4CUpnIkjWXB1xWQNUW6xjrYnY.30uNu1Ow1BoGYT3f?startTime=1645543974000)
* Notes: [Scaling melt migration](spring2022/Melt_migration-scaling.pdf)

### Lecture 12 (Feb 24): Solving the flow problem
* Lecture: [[pdf]](spring2022/GEO_398M_Lecture12_2022.pdf) [[rec-class]](https://utexas.zoom.us/rec/share/4LNyoJEVs-LQGKGm0_jyRzA85FyE1_b_Gk1-4cnPuu59IxnF3Cm1Bxdz8INFSXaq.MUFA9h0a-PfTQnLM?startTime=1645718821000) [[rec-extra]](https://utexas.zoom.us/rec/share/AVCEu-pAN0rMG3KaFktqrnOb5fzUx6LzcpfiVTb2sfTkDAO-riiL7u0N7jWJF62H.UZ_dOfXisd9Ibu8g?startTime=1645761678000)
* Notes: [Analytic solutions](spring2022/Melt_migration-solutions.pdf)
* LiveScripts: Compacting column: analytical [[Script]](spring2022/demo_compacting_column.mlx), [[pdf]](spring2022/demo_compacting_column.pdf) - numerical [[Script]](spring2022/demo_compacting_column_flow_numerical.mlx), [[pdf]](spring2022/demo_compacting_column_flow_numerical.pdf)

### Lecture 13 (Mar 1): Transport problem - advection equation
* Lecture: [[pdf]](spring2022/GEO_398M_Lecture13_2022.pdf) [[rec]](https://utexas.zoom.us/rec/share/GvZTRYPJ-JIaCUugWqTGbwJDROnBY1RItj3eeEgygaDSC7A9YhKf5pbWnltACM2r.22xbbshnH15r8-VO)
* Notes: [Advection equation](spring2022/Advection_Equation.pdf)

### Lecture 14 (Mar 3): Transport problem - time stepping
* Lecture: [[pdf]](spring2022/GEO_398M_Lecture14_2022.pdf) [[rec]](https://utexas.zoom.us/rec/share/XUywBlW0Fw4m4eW8Rqy8iYaGEutwBNMXC2eOXulYb9NK3OiSh2vgdx0c_E_LNZmV.9OS53RrevnJkH_1V?startTime=1646321630000)

## 2D Numerics

### Lecture 15 (Mar 8): 2D Discrete operators - Part I (Traveling - zoom lecture!)
* Lecture: [[pdf]](spring2022/GEO_398M_Lecture15_2022.pdf) [[rec]](https://utexas.zoom.us/rec/share/4m2PYQ9HHRaK0VkYOKH41V3e30n9HM-gMx1NxVgPePE_nZAaI3pS-WjoKElDhdkH.-ie8mByTt-9IHuCe?startTime=1646753877000)
* Notes: [2D discrete operators](spring2022/DiscreteOperators2D.pdf)
* LiveScripts: Intro 2D [[script]](spring2022/demo_2d_basics.mlx) [[pdf]](spring2022/demo_2d_basics.pdf)

### Lecture 16 (Mar 10): 2D Discrete operators - Part II (Traveling - zoom lecture!)
* Lecture: [[pdf]](spring2022/GEO_398M_Lecture16_2022.pdf) [[rec]](https://utexas.zoom.us/rec/share/P6V8ncgBsKA2C06GncBNwd38Lklzh4BnMOMhHj2tNglbKe_lbsVA96-73MFCRPl8.lltbx75Eo8OIle0T?startTime=1646926413000)
* LiveScripts: 2D ops [[script]](spring2022/demo_2d_ops.mlx) [[pdf]](spring2022/demo_2d_ops.pdf)
* Extra (curtesy of Afzal): 3D Basics [[pdf]](spring2022/demo_3d_basics.pdf), 3D discrete operators [[pdf]](spring2022/demo_3d_ops.pdf)

### No class Mar 15 and 17 (Spring break)

### Lecture 17 (Mar 22): 2D Discrete Advection
* Lecture: [[pdf]](spring2022/GEO_398M_Lecture17_2022.pdf) [[rec]](https://utexas.zoom.us/rec/share/xi_PHncGMrSJv6kAon7Uj0yQQxTVAZlfIGfT_iM6aWb_0i1bFddODCmlZzdn_29b.8dxlMu3-yByKuoK2?startTime=1647959989000)
* Notes: [2D Discrete Advection](spring2022/DiscretizationAdvection2D_kron.pdf)
* LiveScript: Advection 2D [[script]](spring2022/demo_advection.mlx) [[pdf]](spring2022/demo_advection.pdf)

## Stokes equation
### Lecture 18 (Mar 24): Navier-Stokes equation
* Notes: [N-S equations](spring2022/NavierStokesEquations.pdf)

### Lecture 19 (Mar 29): Stokes equation
* Notes: [N-S equations](spring2022/StokesEquations.pdf)
* 
### Lecture 20 (Mar 31): Stokes grid


### Lecture 21 (Apr 5): Stokes operators

### Lecture 22 (Apr 7): Stokes boundary conditions



### Lecture 23 (Apr 13): Thermal convection

## Melt migration (Darcy-Stokes)
### Lecture 24 (Apr 15): Derivation of Darcy-Stokes equations


### Lecture 25 (Apr 20): Scaling of Darcy-Stokes equations

### Lecture 26 (Apr 21): 
### Lecture 27 (Apr 26): 
### Lecture 28 (Apr 28): 
### Lecture 26 (May 3): 
### Lecture 27 (May 5): 
