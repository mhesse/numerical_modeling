## Course Description

Covers numerical solution of dynamical problems arising in the solid earth geosiences. Entails development of individual codes in Matlab and application of codes to understanding heat transfer, wave propagation, elastic, and viscous deformations. Requires familiarity with Matlab.
## Office hours
Monday 9-10am: [Zoom ID 980 6132 7017](https://utexas.zoom.us/j/98061327017?pwd=VHVGd29qTmpuSG5FQUlBK3c0THRaUT09) (password in email or on [Canvas](https://utexas.instructure.com/courses/1299932))

## Additional course websites:
* [Piazza](https://piazza.com/class/kk21516n1yz51t) - Discussion board
* [Matlab Grader](https://grader.mathworks.com/courses/31920-geo-325m-398m-numerical-modeling-2021) - Homework (need accept email!)
* [Zoom ID 980 6132 7017](https://utexas.zoom.us/j/98061327017?pwd=VHVGd29qTmpuSG5FQUlBK3c0THRaUT09) - Class (password in email or on [Canvas](https://utexas.instructure.com/courses/1299932))

## Previous course projects:
<img src="images/Vignette_GEO325J_2018.png" alt="hi" class="inline"  width="200" height="200"/> <img src="images/Vignette_GEO325M_2019.png" alt="hi" class="inline"  width="200" height="200"/> <img src="images/Vignette_GEO325M_2020.jpg" alt="hi" class="inline"  width="200" height="200"/>


The course content will be guided by a current research problem that typically lead to a scientific publication within the following year. Past classes following problems:

* [Spring 2018](Spring2018.md): Impact-induced cryovolcanism in Occator Crater on dwarf planet Ceres 

* [Spring 2019](Spring2019.md): Transport of surface oxidants through Europa's ice shell

* [Spring 2020](Spring2020.md): Model convective upwelling in Europa's ice shell

## This years course project
In spring 2021 we will develop a model for the response of Martian groundwater to very large asteroid impacts that instantaneously generate basins kilometers deep and thousands of kilometers wide, see sketch below. These events have the potential to alter groundwater levels over very large areas and for long times. The basisns likely host long-lived hydrothermals systems that provide a habitable environment as well as large lakes.

* Review paper on Habitability of Mars [Westall et al. 2013](papers/Westall2013.pdf)
* Review paper on Impacts and Origin of Life [Osinski et al. 2020](papers/Osinski2020.pdf)
* TED talk by Nathalie Cabrol on Life on Mars [[Link]](https://www.ted.com/talks/nathalie_cabrol_how_mars_might_hold_the_secret_to_the_origin_of_life?language=en)

<img src="images/HellasBasin.png" alt="hi" class="inline"  width="600" height="150"/>

## Matlab basics:
Here are some LiveScripts I prepared for the first class in 2018 that didn't have a Matlab prerequisite. If you don’t have much Matlab experience, please look through them. Vectorized programming is a particularly important topic.
1. [demo_arrays.mlx](matlab/demo_arrays.mlx) [[pdf]](matlab/demo_arrays.pdf)
2. [demo_functions.mlx](matlab/demo_functions.mlx) [[pdf]](matlab/demo_functions.pdf)
3. [demo_control_flow.mlx](matlab/demo_control_flow.mlx) [[pdf]](matlab/demo_control_flow.pdf)
4. [demo_matlab_functions.mlx](matlab/demo_matlab_functions.mlx) [[pdf]](matlab/demo_matlab_functions.pdf)
5. [demo_plotting.mlx](matlab/demo_plotting.mlx) [[pdf]](matlab/demo_plotting.pdf)
6. [demo_vectorized_programing.mlx](matlab/demo_vectorized_programing.mlx) [[pdf]](matlab/demo_vectorized_programing.pdf)
7. [demo_odds_ends.mlx](matlab/demo_odds_ends.mlx) [[pdf]](matlab/demo_odds_ends.pdf) (structures, logical indexing, anonymous functions)

Below are two files that I have sometimes used for the demos in class. If you put them into the folder with class files you should have not problem.
* [marc_colors.m](matlab/marc_colors.m)
* [set_demo_defaults.m](matlab/set_demo_defaults.m)

## Lecture Notes
### Lecture 1 (Jan 19): Introduction
* [Lecture 1](modules/GEO325M_Lecture1.pdf)
* [Course Introduction](modules/CourseIntro.pdf)
* [Course Project 2021](modules/ClassProject_2021.pdf)
* [Intoduction to porous media](modules/PorousMediaIntro.pdf)

### Lecture 2 (Jan 21): Incompressible single phase flow
* [Lecture 2](modules/GEO_325M__Lecture_2.pdf)
* [Balance Laws](modules/BalanceLaws.pdf)
* [Fluid mass balance](modules/FluidMassBalance.pdf)
* [Incompressible flow](modules/IncompressibleFlow.pdf)

### Lecture 3 (Jan 26): Conservative Finite Differences
* [Lecture 3](modules/GEO_325M_Lecture3.pdf)
* Review Finite Differences [[LiveScript]](matlab/demo_intro_numerics.mlx) [[pdf]](matlab/demo_intro_numerics.pdf)
* [Conservative Finite Differences](modules/ConservativeFiniteDifferences.pdf)
* Demos: Checkerboard pattern [[Matlab]](matlab/demo_checkerboard.m), FD vs. CFD [[Matlab]](matlab/demo_compare_FD_FV.m)

### Lecture 4 (Jan 28): Discrete Differential Operators
* [Lecture 4]
* [Discrete operators](modules/DiscreteOps1D.pdf)
* Demo operators: [[LiveScript]](matlab/demo_testing_ops.mlx) [[pdf]](matlab/demo_testing_ops.pdf)
### Lecture 5 (Feb 2): Dirichlet BC (Homogeneous)

### Lecture 6 (Feb 4): Dirichlet BC (Heterogeneous)
