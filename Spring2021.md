# Spring 2021: Mars groundwater response to impact cratering
In spring 2021 we will develop a model for the response of Martian groundwater to very large asteroid impacts that instantaneously generate basins kilometers deep and thousands of kilometers wide, see sketch below. These events have the potential to alter groundwater levels over very large areas and for long times. The basisns likely host long-lived hydrothermals systems that provide a habitable environment as well as large lakes.

* Review paper on Habitability of Mars [Westall et al. 2013](papers/Westall2013.pdf)
* Review paper on Impacts and Origin of Life [Osinski et al. 2020](papers/Osinski2020.pdf)
* TED talk by Nathalie Cabrol on Life on Mars [[Link]](https://www.ted.com/talks/nathalie_cabrol_how_mars_might_hold_the_secret_to_the_origin_of_life?language=en)

<img src="images/HellasBasin.png" alt="hi" class="inline"  width="600" height="150"/>



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
* [Lecture 4](modules/GEO_325M_Lecture4.pdf)
* [Discrete operators](modules/DiscreteOps1D.pdf)
* Demo operators: [[LiveScript]](matlab/demo_testing_ops.mlx) [[pdf]](matlab/demo_testing_ops.pdf)

### Lecture 5 (Feb 2): Southern highlands aquifer
* [Lecture 5](modules/GEO325M_Lecture5.pdf)
* Southern highlands aquifer: [[LiveScript]](matlab/HighLandAquiferIntro.mlx) [[pdf]](matlab/HighLandAquiferIntro.pdf)
* [Scaling confined linear aquifer](modules/ScalingConfinedAquifer.pdf)

### Lecture 6 (Feb 4): Boundary Conditions - Part I
* [Lecture 6](modules/GEO325M_Lecture6.pdf)
* [Homogeneous Dirichlect BCs](modules/BC_Dirichlet_homo.pdf)
* Demo Dirichlet BCs: [[LiveScript]](matlab/demo_BC_Dirichlet.mlx) [[pdf]](matlab/demo_BC_Dirichlet.pdf)

### Lecture 7 (Feb 9): Boundary Conditions - Part II
* Lecture 7: [[pdf]](modules/GEO325M_Lecture7.pdf) [[video]](https://utexas.zoom.us/rec/share/O3JcL4CftF56f7wwEtSnJbIkb0Kiy3TShA7nPYbNMvzQpid5vn9sv4IifX294D25.cA4yVsy_DxTVb3kU?startTime=1612884740000)
* [Heterogeneous BCs](modules/BC_Dirichlet_hetero.pdf)
* [Solving Linear Boundary Value Problems (LBVPs)](modules/SolvingLBVPs.pdf)
* Layered Media: [[LiveScript]](matlab/demo_layered_media.mlx) [[pdf]](matlab/demo_layered_media.pdf)

### Lecture 8 (Feb 11): Layered media and heterogeneous coefficients
* Lecture 8: [[pdf]](modules/GEO325M_Lecture8.pdf) [video](https://utexas.zoom.us/rec/share/K61MqQHsr_VVMF8NSoFjtiOGIvDZXmsK2oyzj83Xdk8MfKbcHTTvYXhfvNOipsMV.Qyid96-7GpKPqzgV?startTime=1613058001000)
* Layered Media: [[LiveScript]](matlab/demo_layered_media.mlx) [[pdf]](matlab/demo_layered_media.pdf)
* Mean aquifer properties: [[liveScript]](matlab/MarsAquiferMeanProp.mlx)  [[pdf]](matlab/MarsAquiferMeanProp.pdf)
* [Variable coefficients](modules/Variable_coefficients.pdf)

### Class cancelled Feb 16, Feb 18 and Feb 23 (stay warm!)

### Lecture 9 (Feb 25): Fluxes and Neumann BC's
* Lecture 9: [[pdf]](modules/GEO325M_Lecture9.pdf)
* [Aquifer with precipitation and polar recharge](modules/Aquifer_with_precipitation_and_polar_recharge.pdf)
* [Neumann BCs](modules/BC_Neumann2021.pdf)
* Demo Neumann: [[LiveScript]](matlab/LinearConfinedAquiferWithPolarRecharge.mlx) [[pdf]](matlab/LinearConfinedAquiferWithPolarRecharge.pdf)
* Flux computation: [[LiveScript]](matlab/FluxComputation.mlx) [[pdf]](matlab/FluxComputation.pdf)

### Lecture 10 (Mar 2): Cylindrical and spherical-shell coordinates
* Lecture 10: [[pdf]](modules/GEO325M_Lecture10.pdf)
* Cylindrical coordinates: [[LiveScript]](matlab/demo_radial_polar_recharge.mlx) [[pdf]](matlab/demo_radial_polar_recharge.pdf)
* Spherical shell coordinates: [[LiveScript]](matlab/demo_sperical_shell_precipitation.mlx) [[pdf]](matlab/demo_sperical_shell_precipitation.pdf)
* [Analytical solution - cylindrical geometry with polar recharge](modules/Cylindrical_with_polar_recharge.pdf)
* [Analytical solution - spherical shell with precipitation](modules/Spherical_shell_confined_precipitation.pdf)

### Lecture 11 (Mar 4): Slightly compressible flow
* Lecture 11: [[pdf]](modules/GEO325M_Lecture11.pdf)
* [Slightly compressible flow](modules/Slightly_compressible_flow.pdf)

### Lecture 12 (Mar 9): Time stepping and numerical stability
* Lecture 12: [[pdf]](modules/GEO325M_Lecture12.pdf)
* [Time integration](modules/Time_integration.pdf)
* Theta-method: [[LiveScript]](matlab/demo_timestepping.mlx) [[pdf]](matlab/demo_timestepping.pdf)
* [Transient spherical cap aquifer](modules/Transient_spherical_cap_aquifer.pdf)
* Transient aquifer: [[LiveScript]](matlab/demo_transient_aquifer.mlx) [[pdf]](matlab/demo_transient_aquifer.pdf)

### Lecture 13 (Mar 11): Self-similar diffusion - linear
* Lecture 13: [[pdf]](modules/GEO325M_Lecture13.pdf)
* [Transient drainage of confined aquifer](modules/Transient_drainage_of_confined_linear_aquifer.pdf)
* [Transient recharge of confined aquifer](modules/Transient_recharge_confined_linear_aquifer.pdf)
 
### No class Mar 16 and 18 (Spring break)

### Lecture 14 (Mar 23): Unconfined flow & Newton-Raphson Method
* Lecture 14: [[pdf]](modules/GEO325M_Lecture14.pdf)
* [Unconfined flow](modules/Unconfined_flow.pdf)
* [Newton-Raphson method](modules/Newton-Raphson_method.pdf)

### Lecture 15 (Mar 25): Steady non-linear problems
* Lecture 15: [[pdf]](modules/GEO325M_Lecture15.pdf)
* Demo Newton-Raphson: [[LiveScript]](matlab/demo_Newton_intro.mlx) [[pdf]](matlab/demo_Newton_intro.pdf)
* [Jacobian for steady unconfined flow](modules/Jacobian_for_unconfined_flow.pdf)

### Lecture 16 (Mar 30): Transient non-linear problems - self-similar solutions
* Lecture 16: [[pdf]](modules/GEO325M_Lecture16.pdf) [[video]](https://utexas.zoom.us/rec/share/i-LIiNjHSBXjLQdIcCk0iHZb_0zgQmXkJjscs2DQpsvmWkIxJr3pSWQWWdPJaGV8.jD6zKfvIwiANURkN?startTime=1617114974000)
* [Unconfined flow on spherical shell](modules/Steady_unconfined_aquifer_spherical_shell.pdf)
* Numerical Jacobian approximation: [[LiveScript]](matlab/demo_numerical_jacobian.mlx) [[pdf]](matlab/demo_numerical_jacobian.pdf)

### Lecture 17 (Apr 1): Late self-similar solution for unconfined drainage
* Lecture: [[pdf]](modules/GEO325M_Lecture17.pdf) [[video]](https://utexas.zoom.us/rec/share/9KyvSdUAC43ESGj2ygoohqwuQ87oMeredkGzbf-ehR4COGKTA4viPleJHAaeiHB3.uDFEHI6hMVmJKhvM?startTime=1617287550000)
* [Transient drainage of unconfined aquifer](modules/Drainage_of_unconfined_aquifer.pdf)
* Compute self-similar solution: [[LiveScript]](matlab/demo_self_similar_drainage_dupuit.mlx) [[pdf]](matlab/demo_self_similar_drainage_dupuit.pdf)

### Lecture 18 (Apr 6): Transient unconfined drainage & application to Mars
Lecture: [[pdf]](modules/GEO325M_Lecture18.pdf) [[video]](https://utexas.zoom.us/rec/share/4Km0l_CK0XpD-UTVKOif8PsoOYo6NjPhrh_EFjN-0Jj4uVhayNsQqSdVXE5pA2MG.CU4D_W8KIR3wRji3)
* [Jacobian unconfined flow - transient](modules/Jacobian_unconfined_flow_transient.pdf)
* Mars highland aquifer drainage: [[LiveScript]](matlab/demo_Mars_aquifer_drainage.mlx) [[pdf]](matlab/demo_Mars_aquifer_drainage.pdf)

### Lecture 19 (Apr 8): Moving from 1D to 2D
* Lecture: [[pdf]](modules/GEO325M_Lecture19.pdf)
* 2D basics: [[LiveScript]](matlab/demo_2d_basics.mlx) [[pdf]](matlab/demo_2d_basics/pdf)
* [Building 2D discrete operators](modules/DiscreteOperators2D.pdf)

### Lecture 20 (Apr 13): Divergence & Gradient 
* Lecture: [[pdf]](modules/GEO325M_Lecture20.pdf)
* Discrete operators 2D:[[LiveScript]](matlab/demo_2d_ops.mlx) [[pdf]](matlab/demo_2d_ops.pdf)
* Transition from 1D to 2D: [[LiveScript]](matlab/demo_transition2D.mlx) [[pdf]](matlab/demo_transition2D.pdf)

### Lecture 21 (Apr 15): Irregular domains
* Lecture: [[pdf]](modules/GEO325M_Lecture21.pdf) [[Video]](https://utexas.zoom.us/rec/share/UTtB07gxJmUDRdye8uGFKSBrJif-L1tjSY_gABLKV_npHxc8HhxUCX6VIAqTj2CN.aNCdujXnAdpQDRFd)
* [Complex geometries](modules/Complex_Geometries.pdf)
* Unconfined flow near crater: [[LiveScript]](matlab/demo_complex_domains.mlx) [[pdf]](matlab/demo_complex_domains.pdf)

### Lecture 22 (Apr 20): 2D Spherical shell
* Lecture: [[pdf]](modules/GEO325M_Lecture22.pdf) [[Video]](https://utexas.zoom.us/rec/share/2kXWvJ082NISC404b2WCa8PNYcRi2EZqagtX4ldJdRtuw6kk0UKVZklETTCLp8y6.1TnWAswvTJEoEwUV)
* 2D operators on a spherical shell: [[LiveScript]](matlab/demo_2D_spherical_shell_discretization.mlx) [[pdf]](matlab/demo_2D_spherical_shell_discretization.pdf)

### Lecture 23 (Apr 22): Coupled Ocean-Groundwater Model
* Lecture: [[pdf]](modules/GEO325M_Lecture23.pdf) [[Video]]
* [Ocean-Groundwater interaction](modules/Ocean-Groundwater_Interaction.pdf)
* Solving coupled problem: [[LiveScript]](matlab/demo_GWOcoupling.mlx) [[pdf]](matlab/demo_GWOcoupling.pdf)

### Lecture 24 (Apr 27): Crater filling
* Lecture: [[pdf]](modules/GEO325M_Lecture24.pdf)

### Lecture 25 (Apr 29): Mars topography
* Working with MOLA topography data: [[LiveScript]](matlab/Mars_topography.mlx) [[pdf]](matlab/Mars_topography.pdf)

### Lecture 26 (May 4): Numerical solution with volume constraint
* Lecture: [[pdf]](modules/GEO325M_Lecture26.pdf)

### Lecture 27 (May 6): Summary, discussion and feedback
