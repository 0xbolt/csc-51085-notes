# csc-51085-notes

## Schedule

### 1. Introduction & Mathematical Foundations
- Computer animation vs VFX
- Motion & deformation focus
- Animation pipeline overview
- Mathematical tools:
  - Linear algebra
  - Rotations (matrices, Euler angles, quaternions)
  - Homogeneous coordinates
  - SVD
  - Barycentric coordinates
- Curve modeling:
  - Cardinal splines
  - Catmull–Rom splines
  - Frenet frames

#### References
- [Animating rotation with quaternion curves (Shoemake 1985)](https://dl.acm.org/doi/10.1145/325165.325242)
  https://www.cs.cmu.edu/~kiranb/animation/p245-shoemake.pdf
- [Principles of traditional animation applied to 3D computer animation (Lasseter 1987)](https://dl.acm.org/doi/10.1145/37402.37407)
- [Spacetime Constraints (Witkin et al. 1998)](https://dl.acm.org/doi/10.1145/378456.378507)

### 2. Kinematic Animation: Rigid & Articulated Bodies
- Key-framing rigid bodies (position + orientation)
- Orientation interpolation
  - Euler angles (gimbal lock)
  - Rotation matrices (re-orthogonalization)
  - Quaternions & SLERP
- Articulated skeletons
- Direct vs Inverse Kinematics
- IK solvers:
  - Jacobian transpose / pseudoinverse
  - Damped Least Squares
  - FABRIK
  - Priority-based IK
- Motion capture
- Motion retargeting
- Motion graphs
- Motion editing / warping

#### References
- Samuel R. Buss, *Introduction to Inverse Kinematics with Jacobian Transpose, Pseudoinverse and Damped Least Squares Methods*, 2009
  https://www.cs.cmu.edu/~15464-s13/lectures/lecture6/iksurvey.pdf
- Andreas Aristidou, Joan Lasenby, *FABRIK: A Fast, Iterative Solver for the Inverse Kinematics Problem*, Graphical Models 2011
  http://www.andreasaristidou.com/publications/papers/FABRIK.pdf
- Andreas Aristidou et al., *Extending FABRIK with Model Constraints*, CAVW 2016
  http://www.andreasaristidou.com/publications/papers/Extending_FABRIK_with_Model_Cοnstraints.pdf
- Paolo Baerlocher, Ronan Boulic, *An Inverse Kinematic Architecture Enforcing an Arbitrary Number of Strict Priority Levels*, 2003
  https://www.cimat.mx/~cesteves/cursos/animation/pdf/BaerlocherBoulic.pdf
- Michael Gleicher, *Retargetting Motion to New Characters*, SIGGRAPH 1998
  https://dl.acm.org/doi/pdf/10.1145/280814.280820
- Lucas Kovar, Michael Gleicher, Frédéric Pighin, *Motion Graphs*, SIGGRAPH 2002
  https://research.cs.wisc.edu/graphics/Papers/Gleicher/Mocap/mograph.pdf
- Andrew Witkin, Zoran Popović, *Motion Warping*, SIGGRAPH 1995
  https://homes.cs.washington.edu/~zoran/warpage/warpage.pdf
- Daniel Holden, Taku Komura, Jun Saito, *Phase-Functioned Neural Networks for Character Control*, TOG 2017
  https://theorangeduck.com/media/uploads/other_stuff/phasefunction.pdf

### 3. Character Rigging, Skinning & Faces
- Skeletal rigs as constraint DAGs
- Controllers, constraints, hierarchical rigs
- Skinning:
  - Rigid skinning
  - Linear Blend Skinning (LBS)
  - Dual Quaternion Skinning (DQS)
- Skinning artifacts:
  - Candy-wrapper effect
  - Collapsing joints
- Weight painting & automation
- Facial animation:
  - Blend shapes
  - Facial rigs
  - FACS
  - Lip-sync (visemes)
- Mocap, vocap, procedural & ML-driven faces

#### References
- John Lasseter, *Principles of Traditional Animation Applied to 3D Computer Animation*, SIGGRAPH 1987
  https://dl.acm.org/doi/10.1145/37402.37407
- Ladislav Kavan et al., *Geometric Skinning with Approximate Dual Quaternion Blending*, TOG 2008
  https://dl.acm.org/doi/10.1145/1409625.1409627

### 4. Particle Systems
- Scripted particles
- First-order systems (velocity-driven)
- Second-order systems (Newtonian)
- Boids & crowds
- ODE time integration:
  - Forward Euler
  - Backward Euler
  - Symplectic Euler
  - Runge–Kutta

#### References
- Craig Reynolds, *Flocks, Herds, and Schools: A Distributed Behavioral Model*, SIGGRAPH 1987

### 5. From Particles to FEM
- Mass–spring systems
- Explicit vs implicit integration
- Limitations of springs
- Finite Element Method
- Linear elasticity
- Neo-Hookean materials
- Constraints & XPBD

#### References
- Minchen Li et al., *Fast Simulation of Mass-Spring Systems*, SIGGRAPH Asia 2013
- Eitan Grinspun et al., *Discrete Shells*, SIGGRAPH 2006
- Smith, De Goes, Kim, *Stable Neo-Hookean Flesh Simulation*, TOG 2018

### 6. Deforming Bodies
- Shells & rods
- Discrete differential geometry
- Shape matching
- Laplacian editing
- ARAP
- Cage-based deformation

#### References
- Matthias Müller et al., *Meshless Deformations Based on Shape Matching*, SIGGRAPH 2005
- Miklós Bergou et al., *Discrete Elastic Rods*, SIGGRAPH 2008
- Grégoire Daviet et al., *Hair Simulation*, TOG 2011

### 7. Rigid Body Simulation & Contacts
- Rigid body dynamics
- Linear & angular momentum
- Collision detection:
  - Broad phase
  - Narrow phase
- Bounding volumes & BVHs
- Impulse-based collision response
- Friction
- LCP formulations
- Articulated rigid bodies

#### References
- Christer Ericson, *Real-Time Collision Detection*, CRC Press, 2005
- Gottschalk et al., *OBBTree*, SIGGRAPH 1996

### 8. Fluid Simulation
- Eulerian vs Lagrangian fluids
- Navier–Stokes equations
- Stable Fluids
- PIC / FLIP
- Hybrid solvers
- Lattice Boltzmann Method (LBM)

#### References
- Jos Stam, *Stable Fluids*, SIGGRAPH 1999
- Fedkiw, Stam, Jensen, *Visual Simulation of Smoke*, SIGGRAPH 2001
- Zhu, Bridson, *Animating Sand as a Fluid*, SIGGRAPH 2005
- [Flow Simulation with Complex Boundaries (GPU Gems 2)](https://developer.nvidia.com/gpugems/gpugems2/part-vi-simulation-and-numerical-algorithms/chapter-47-flow-simulation-complex)

### 9. Physically Based Character Animation
- Layered character models
- Passive vs active physics
- Hair dynamics
- Cloth dynamics
- Skin simulation
- Muscle-like actuation
- Motion control strategies
- Learning-based control

#### References
- Bertails et al., *Super-Helices for Predictable Hair Simulation*, SIGGRAPH 2006
- Bergou et al., *Discrete Elastic Rods*, SIGGRAPH 2008
- [Adaptive nonlinearity for collisions in complex rod assemblies (Kaufman et al. 2014)](https://dl.acm.org/doi/10.1145/2601097.2601100)

## Books
- Rick Parent, *Computer Animation: Algorithms and Techniques*
- Witkin & Baraff, *Physically Based Modeling*
- Real time collision detection

## Other Courses
- http://graphics.stanford.edu/courses/cs348c/

## Libraries
- https://github.com/g-truc/glm
- https://libeigen.gitlab.io
- https://libigl.github.io
- https://www.cgal.org
- https://geometry-central.net
- https://polyscope.run
- https://github.com/bulletphysics/bullet3
