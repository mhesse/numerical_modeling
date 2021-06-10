[Back to main course page](https://mhesse.github.io/numerical_modeling/)

# Spring 2019: Modeling oxidant transport on Europa

The course introduces geoscientists to numerical solution of dynamical problems arising in the solid earth geosciences. The students will develop their own codes in Matlab and apply them to gain insight into heat transfer, wave propagation, elastic and viscous deformations. Familiarity with Matlab is assumed, for an introduction to Matlab please attend GEO 325G.

The course content will be guided by a current research problem. The class project from Spring 2018 on Occator crater on Ceres has just been published in [GRL](https://agupubs.onlinelibrary.wiley.com/doi/abs/10.1029/2018GL080327). The 2019 class project for this spring will look at oxidant transport through Europa's ice shell, which is thought to be a key to the habitability of its interior ocean.

Office hours: MW 3-4pm in JGB 2.102A (in the JSG Student Center by the Pangea Cafe)

**Course websites:**

Course discussion forum is on Piazza, see tab in menu on the left.
1. Homeworks will be completed on [Matlab Grader](https://grader.mathworks.com/courses/7298-geo325m-geo398m-introduction-to-numerical-modeling-for-geoscientists).
2. You should have received invitations to both sites, let me know if you didn't.

**Matlab background:**

Here are some LiveScripts I prepared for a previous class. If you don't have much Matlab experience, please look through them. Vectorized programming is a particularly important topic.
Vectorized programming is a particularly important topic.
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

### INTRO AND NUMERICS IN 1D

**Lecture 1 (Jan 22): Class introduction & project**
* [Class Introduction](modules/CourseIntro2019.pdf)
* [Class project](modules/ClassProject2019.pdf)

**Lecture 2 (Jan 24): Conservation laws**
* [Balance Laws](modules/BalanceLaws.pdf)
* [Introduction to porous media](modules/PorousMediaIntro.pdf)

**Lecture 3 (Jan 29): Discrete Operators**
* Introduction to Finite Differences: [[LiveScript]](matlab/demo_intro_numerics.mlx) [[pdf]](matlab/demo_intro_numerics.pdf)
* [Discrete operators](/modules/DiscreteOps1D.pdf)
* Testing discrete operators: [[LiveScript]](matlab/demo_testing_ops.mlx) [[pdf]](matlab/demo_testing_ops.pdf)

**Lecture 4 (Jan 31): Flow in an elastic rock**
* [Mass balance](modules/MassBalance.pdf)
* [Flow in elastic rocks](modules/ElasticRock.pdf)

**Lecture 5 (Feb 5): Flow in a ductile rock**
* [Flow in ductile rocks](modules/DuctileRock.pdf)

**Lecture 6 (Feb 7): Dirichlet Boundary Conditions - Part I**
* [Dirichlet BC's homogeneous](modules/BC_Dirichlet_homo.pdf)

**Lecture 7 (Feb 12): Dirichlet Boundary Conditions - Part II**
* [Dirichlet BC's heterogeneous](modules/BC_Dirichlet_hetero.pdf)
* Demo Dirichlet: [[LiveScript]](matlab/demo_Dirichlet.mlx) [[pdf]](matlab/demo_Dirichlet.pdf)

**Lecture 8 (Feb 14): Hydraulic head**
* [Hydraulic head formulation](modules/HydraulicHead.pdf)

**Lecture 9 (Feb 19): Scaling**
* [Scaling of ductile equations](modules/ScalingDuctileFlow.pdf)

**Lecture 10 (Feb 21): Analytic solutions & physical properties**

**Lecture 11 (Feb 26): Neumann Boundary Conditions **

**Lecture 12 (Feb 28): Fluxes & variable coefficients**

**Lecture 13 (Mar 5): Advection**

I have assembled this lecture from previous notes that use different symbols and examples. Fortunately, one student has offered to share her notes (Lecture13.pdf) that capture the flow of the lecture and have proper context for this class. My own notes are also supplied but not strictly necessary (Method_of_Characteristics.pdf, DiscretizationAdvective.pdf).

**Lecture X (Mar 7): No class due to travel**

**Lecture 14 (Mar12): Advection and Time stepping**

**Lecture 15 (Mar 14): Solving the full system of equations**

### NUMERICS IN 2D

**Lecture 16 (Mar 26): Moving into 2D - Part 1**

**Lecture 17 (Mar 28): Moving into 2D - Part 2**

**Lecture 18 (Apr 2): Advection in 2D - Part 1**

**Lecture 19 (Apr 4): Advection in 2D - Part 2**

**Lecture 20 (Apr 9): Mass transport in two-phase flow**

**Lecture (Apr 11): cancelled**

**Lecture 21 (Apr 16): Oxidant Transport Discretization**

**Lecture 22 (Apr 18): Partitioning tracer**

### MELTING AND ENTHALPY METHOD

**Lecture 23 (Apr 23): Energy and Enthalpy**

**Lecture 24 (Apr 25): Melting of single component system**

**Lecture 25 (Apr 30): Simplified melting model**

**Lecture 27 (May 2): Eutectic system 1**

**Lecture 28 (May 7): Eutectic system 2**

**Lecture 29 (May 8): Cooling of the near surface brine**
