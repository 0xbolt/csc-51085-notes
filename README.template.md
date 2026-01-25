# csc-51085-refs

## Schedule
### 2. Kinematic Animation: Rigid & Articulated Bodies
- Key-framing rigid bodies: position + orientation
- Interpolating orientations:
- Euler angles (gimbal lock)
- Rotation matrices (re-orthogonalization)
- Quaternions & SLERP
- Articulated skeletons
- Direct Kinematics (DK) vs Inverse Kinematics (IK)
- IK solvers:
    - Jacobian-based IK
    - Secondary tasks
    - FABRIK algorithm
- Motion capture, retargeting, motion graphs

### 3. Character Rigging, Skinning & Faces
- Skeletal rigs as constraint DAGs
- Skinning techniques:
    - Rigid skinning
    - Linear Blend Skinning (LBS)
    - Dual Quaternion Skinning (DQS)
- Skinning weight painting & automation
- Skinning artifacts:
    - Candy-wrapper
    - Collapsing joints
- Volume preservation & implicit skinning
- Facial animation:
    - Blend shapes
    - FACS system
    - Facial rigs
    - Lip-sync (visemes)
- Mocap, vocap, procedural, ML-driven faces

### 4. Particle Systems
- Particle representations:
    - Scripted
    - First-order (velocity-driven)
    - Second-order (Newtonian)
- Boids & crowds
- ODE time integration:
    - Forward Euler
    - Backward Euler
    - Symplectic Euler
    - Runge–Kutta
- Variational mechanics
- Collisions with particles
- Granular materials
- SPH fundamentals

### 5. From Particles to FEM
- Mass–spring systems
- Explicit vs implicit integration
- Limitations of springs
- Finite Element Method (FEM)
- Linear elasticity
- Neo-Hookean models
- Variational integrators
- Constraints & XPBD

### 6. Deforming Bodies
- Shells & rods
- Discrete differential geometry
- Shape matching
- Surface editing:
    - Laplacian editing
    - ARAP
- Cage-based deformation
- Generalized barycentric coordinates

### 7. Rigid Body Simulation & Contacts
- Rigid body dynamics
- Linear & angular momentum
- Collision detection:
    - Broad phase
    - Narrow phase
- Bounding volumes & BVHs
- Impulse-based collision response
- Resting contacts
- Friction
- LCP formulations
- Articulated rigid bodies

### 8. Fluid Simulation
- Eulerian vs Lagrangian fluids
- Navier–Stokes equations
- Stable Fluids
- Advection schemes
- PIC / FLIP
- Hybrid solvers
- Lattice Boltzmann Method (LBM)
- Multiphase fluids



## Books
## Libraries
- [glm](https://github.com/g-truc/glm)
- [Eigen](https://libeigen.gitlab.io)
- [libigl](https://libigl.github.io)
- [CGAL](https://www.cgal.org)
- [Geometry Central](https://geometry-central.net)
- [Polyscope](https://polyscope.run)
- [Bullet](https://github.com/bulletphysics/bullet3)

<!--
- Other courses
- Siggraph courses
- Libraries
- Papers, references
- Schedule, content
- Suggested readings, etc.
Reference courses: cs231n, cs168, cs348 ...
-->