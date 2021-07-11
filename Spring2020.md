[Back to main course page](https://mhesse.github.io/numerical_modeling/)
# Spring 2020: Modeling ice shell convection

**Course overview**

The course introduces geoscientists to numerical solution of dynamical problems arising in the solid earth geosciences. The students will develop their own codes in Matlab and apply them to gain insight into heat transfer, wave propagation, elastic and viscous deformations. Familiarity with Matlab is assumed, for an introduction to Matlab please attend GEO 325G.

**Course websites:**

* Course discussion forum is on Piazza, see tab in menu on the left.
* Homeworks will be completed on Matlab Grader (Links to an external site.).

You should have received invitations to both sites, let me know if you didn't.

**Lecture  1 (Jan 21): Class introduction & project**
* [Course Intro](modules/CourseIntro2020.pdf)
* [Class Project](modules/ClassProject_2020.pdf)

### 1D CONDUCTIVE HEAT TRANSPORT

**Lecture  2 (Jan 23): Conservation laws**
* [Balance Laws](modules/BalanceLaws.pdf)
* [Energy and Enthalpy](modules/Energy_Enthalpy.pdf)
* [Heat equation](modules/Heat_equation.pdf)

**Lecture  3 (Jan 28): Discrete Operators**
* [Discrete operators in 1D](modules/DiscreteOps1D.pdf)
* [Radial operators](modules/RadialOperators.pdf)
* Introduction to numerics: [[Livescript]](spring2020/demo_intro_numerics.mlx) [[pdf]](spring2020/demo_intro_numerics.pdf)
* Testing the operators: [[LiveScript]](spring2020/demo_testing_ops.mlx) [[pdf]](spring2020/demo_testing_ops.pdf)

**Lecture  4 (Jan 30): Boundary Conditions I: Dirichlet homogeneous**
* Demo continental geotherm: [[LiveScript]](spring2020/demo_ContinentalGeotherm.mlx) [[pdf]](spring2020/demo_ContinentalGeotherm.pdf)
* [Dirichlet BC's homogeneous](modules/BC_Dirichlet_homo.pdf)

**Lecture  5 (Feb  4): Boundary Conditions II: Dirichlet heterogenous**
* Demo Dirichlet BC's: [[LiveScript]](spring2020/demo_BC_Dirichlet_2020.mlx) [[pdf]](spring2020/demo_BC_Dirichlet_2020.pdf)
* [Dirichlet BC's heterogeneous](modules/BC_Dirichlet_hetero.pdf)

**Lecture  6 (Feb  6): Boundary Conditons III: Neumann**
* [Neuman BC's](spring2020/BC_Neumann2020.pdf)
* [Compute Fluxes](spring2020/Compute_Fluxes_geotherm.pdf)

**Lecture  7 (Feb  11): Discrete Conservation, Layered Media and Variable Coefficients**
* Discrete Conservation: [[LiveScript]](spring2020/demo_discrete_conservation.mlx) [[pdf]](spring2020/demo_discrete_conservation.pdf)
* Layered Media: [[LiveScript]](spring2020/demo_layered_media.mlx) [[pdf]](spring2020/demo_layered_media.pdf)
* Variable Coefficients: [[LiveScript]](spring2020/demo_variable_coeff.mlx) [[pdf]](spring2020/demo_variable_coeff.pdf)

**Lecture  8 (Feb 13): Transient heat transport**
* K-mean demonstration: [[m-file]](spring2020/demo_K_mean.m)
* Radial coordinates: [[LiveScript]](spring2020/demo_radial_coords.mlx) [[pdf]](spring2020/demo_radial_coords.pdf)
* Time stepping: [[LiveScript](spring2020/demo_timestepping.mlx) [[pdf]](spring2020/demo_timestepping.pdf)

**Lecture  9 (Feb 18): Planetesimal Thermal Evolution**
* Planetesimal Thermal Evolution: [[LiveScript]](spring2020/demo_PlanetesimalThermalEvolution.mlx) [[pdf]](spring2020/demo_PlanetesimalThermalEvolution.pdf)

### 1D ADVECTIVE-CONDUCTIVE HEAT TRANSFER

**Lecture 10 (Feb 20): Advective heat transport**
* Geotherm with deposition: [[LiveScript]](spring2020/demo_GeothermErosionDeposition.mlx) [[pdf]](spring2020/demo_GeothermErosionDeposition.pdf)
* [Discretization of Advection](modules/DiscretizationAdvective.pdf)

**Lecture 11 (Feb 25): Scaling and time-stepping the ADE**
* [Scaling the Advection-Diffusion Equation](spring2020/Scaling_ADE_heat.pdf)

**Lecture 12 (Feb 27): Time stepping ADE**
* Discretization of Advection-Diffusion Equation: [[LiveScript]](spring2020/demo_ADE_discretization.mlx) [[pdf]](spring2020/demo_ADE_discretization.pdf)
* [Numerical Diffusion](spring2020/NumericalDiffusion.pdf)

### DISCRETIZATION IN 2D

**Lecture 13 (Mar  3): Moving from 1D to 2D**
* 2D Basics: [[LiveScript]](spring2020/demo_2d_basics.mlx) [[pdf]](spring2020/demo_2d_basics.pdf)
* [Discrete Operators in 2D](modules/DiscreteOperators2D.pdf)

**Lecture 14 (Mar  5): Discrete Divergence & Gradient**
* Building 2D operators: [[LiveScript]](spring2020/demo_2d_ops.mlx) [[pdf]](spring2020/demo_2d_ops.pdf)
* Transition from 1D to 2D: [[LiveScript]](spring2020/demo_transition2D.mlx) [[pdf]](spring2020/demo_transition2D.pdf)

**Lecture 15 (Mar  5): 2D Advection matrix**
* [Recording of lecture](https://zoom.us/signin?_x_zm_rtaid=HokoMv2xS3CBSYYiZYw3gA.1625856348631.658a4086332232eed4d2eb57b9e5f676&_x_zm_rhtaid=868)
* [Assembly of 2D advection matrix](spring2020/DiscretizationAdvection2D_kron.pdf)

**Lecture 16 (Mar 12): 2D example problems**
* Cooling of the oceanic plate: [[LiveScript]](spring2020/demo_oceanic_plate_cooling.mlx) [[pdf]](spring2020/demo_oceanic_plate_cooling.pdf)

### STOKES FLOW

**Lecture 17(Mar  31): Derivation of Navier-Stokes equation**
* [Recording of lecture](https://zoom.us/signin?_x_zm_rtaid=HokoMv2xS3CBSYYiZYw3gA.1625856348631.658a4086332232eed4d2eb57b9e5f676&_x_zm_rhtaid=868)
* [Navier Stokes Equations](spring2020/NavierStokesEquations.pdf)

**Lecture 18 (Apr 2): Scaling Navier-Stokes equation**
* [Recording of lecture](https://zoom.us/signin?_x_zm_rtaid=HokoMv2xS3CBSYYiZYw3gA.1625856348631.658a4086332232eed4d2eb57b9e5f676&_x_zm_rhtaid=868)
* [Stokes Equations](spring2020/StokesEquations.pdf)

**Lecture 19 (Apr 7): Staggered grid for Stress/Strain**
* [Recording of lecture](https://zoom.us/signin?_x_zm_rtaid=HokoMv2xS3CBSYYiZYw3gA.1625856348631.658a4086332232eed4d2eb57b9e5f676&_x_zm_rhtaid=868)
* [Staggered Grid and Discrete Operators](spring2020/StokesGrid.pdf)

**Lecture 20 (Apr 9): Discrete Stokes operators**
* [Recording of lecture](https://zoom.us/signin?_x_zm_rtaid=HokoMv2xS3CBSYYiZYw3gA.1625856348631.658a4086332232eed4d2eb57b9e5f676&_x_zm_rhtaid=868)
* [Discrete Stokes Operators](spring2020/StokesOps.pdf)

**Lecture 20 (Apr 9): Discrete Stokes operators**
* [Recording of lecture](https://zoom.us/signin?_x_zm_rtaid=oUjYgHvLQxexj_5NGblTDw.1626012580939.584b654d68fb6abd41baf210c0e19eec&_x_zm_rhtaid=574)
* [Discretization of the Stokes operators](spring2020/StokesOps.pdf)

**Lecture 21 (Apr 14): Corner flow & Streamlines**
* [Recording of lecture](https://zoom.us/signin?_x_zm_rtaid=oUjYgHvLQxexj_5NGblTDw.1626012580939.584b654d68fb6abd41baf210c0e19eec&_x_zm_rhtaid=574)
* 

**Lecture 22 (Apr 16): Coupled Stokes flow and heat transport - Mid-ocean ridges**

### CONVECTION

**Lecture 23 (Apr 21): Rayleigh-Bernard convection**

**Lecture 24 (Apr 28): Implementing convection**

**Lecture 25 (Apr 30): Advective-diffusive fluxes**

### ICE SHELL CONVECTION
**Lecture 26 (May 5): Temperature dependent properties of ice**

**Lecture 27 (May 7): Tidal dissipation**
