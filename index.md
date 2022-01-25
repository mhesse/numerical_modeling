## Course Description

Covers numerical solution of dynamical problems arising in the solid earth geosciences. Entails development of individual codes in Matlab and application of codes to understanding heat transfer, wave propagation, elastic, and viscous deformations. Requires familiarity with Matlab. 

### Previous course projects:
<img src="images/Vignette_GEO325J_2018.png" alt="hi" class="inline"  width="150" height="150"/>  <img src="images/Vignette_GEO325M_2019.png" alt="hi" class="inline"  width="150" height="150"/>  <img src="images/Vignette_GEO325M_2020.jpg" alt="hi" class="inline"  width="150" height="150"/>  <img src="images/Vignette_GEO325M_2021.png" alt="hi" class="inline"  width="150" height="150"/>

The course content will be guided by a current research problem that typically leads to a scientific publication within the following year. In past classes we have worked on the following problems:

* [Spring 2018](Spring2018.md): Impact-induced cryovolcanism in Occator Crater on dwarf planet Ceres [[paper 1]](https://doi.org/10.1029/2018GL080327) [[paper 2]](https://www.nature.com/articles/s41550-020-1168-2)

* [Spring 2019](Spring2019.md): Transport of surface oxidants through Europa's ice shell

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
Lecture: [[pdf]](spring2022/GEO_398M_Lecture2_2022.pdf) [[rec]](https://utexas.zoom.us/rec/share/cuSTWpCRZuEgqH_v1prt2AYZCiD4COOTj_DM76pYJipwvwtpEHRGHNf1bM-kDJDS.FDQIx6h5lD0Ujps3?startTime=1643125864000)

Notes: 
LiveScripts: Finite differences [[LiveScript]](spring2022/demo_intro_numerics.mlx) [[pdf]](spring2022/demo_intro_numerics.pdf)

### Lecture 4 (Jan 27): Discrete Operators

### Lecture 5 (Feb 1): Boundary conditions I

### Lecture 6 (Feb 3): Boundary conditions II

### Lecture 7 (Feb 8): Heterogeneous media



### Lecture 8 (Feb 10): Fluxes and Flux Boundary condition

## 1D Melt migration (simplified) 

### Lecture 9 (Feb 15): Melt migration intro

### Lecture 10 (Feb 17): Porosity evolution I - compaction

### Lecture 11 (Feb 22): Porosity evolution II - advection

### Lecture 12 (Feb 24): Multi-phase tracer transport

## 2D Numerics
### Lecture 13 (Mar 1): 2D Discrete operators


### Lecture 14 (Mar 3): 2D Advection 

## Stokes equation

### Lecture 15 (Mar 8): 2D Spherical geometry

### Lecture 16 (Mar 10): Stokes equation

### No class Mar 15 and 17 (Spring break)

### Lecture 17 (Mar 22): Stokes grid
### Lecture 18 (Mar 24): Stokes operators

## Melt migration (Darcy-Stokes)
### Lecture 19 (Mar 29): Stokes boundary conditions
### Lecture 20 (Mar 31): Derivation of Darcy-Stokes equations

### Lecture 21 (Apr 5): Scaling of Darcy-Stokes equations

### Lecture 22 (Apr 7): 

### Lecture 23 (Apr 13): 

### Lecture 24 (Apr 15): 

### Lecture 25 (Apr 20): 

### Lecture 26 (Apr 21): 
### Lecture 27 (Apr 26): 
### Lecture 28 (Apr 28): 
### Lecture 26 (May 3): 
### Lecture 27 (May 5): 
