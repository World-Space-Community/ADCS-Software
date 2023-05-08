# Direction Cosine Matrix

**NOTE:** This README requires a [MathJax](https://chrome.google.com/webstore/detail/mathjax-plugin-for-github/ioemnmodlmafdkllaclgeombjnmnbima/related) browser plugin for the mathematics to be rendered.

The vector $\underrightarrow{v}$ can have many equivalent expressions in different frames. 

$$
\underrightarrow{v} = \underrightarrow{\mathcal{F}_a^T} \bold{v_a} = \underrightarrow{\mathcal{F}_b^T} \bold{v_b}
$$

We can find $\bold{v_a}$ from $\bold{v_b}$ by change $\bold{v_b}$ from frame $\underrightarrow{\mathcal{F}_b}$ to frame $\underrightarrow{\mathcal{F}_a}$

$$
\bold{v_a} = \underrightarrow{\mathcal{F}_a} \cdot \underrightarrow{\mathcal{F}_b^{T}} \bold{v_b}
$$

We can define 

$$
\bold{C_{ab}} \equiv \underrightarrow{\mathcal{F}_a} \cdot \underrightarrow{\mathcal{F}_b^{T}}
$$

as the rotation matrix from frame $\underrightarrow{\mathcal{F}_b}$ to frame $\underrightarrow{\mathcal{F}_a}$; hence

$$
\bold{v_a} = \bold{C_{ab}} \bold{v_{b}}
$$

We can say that $\bold{C_{ab}}$ describes the orientation or attitude of $\mathcal{F}_a$ with respect to $\mathcal{F}_b$.

## Principal Rotations

We can consider a few special cases of transferring between  $\underrightarrow{\mathcal{F}_a}$ being displaced from $\underrightarrow{\mathcal{F}_b}$ by a rotation through an angle $\theta$ (using the right-hand rule) about one of the principal axes.

<p align="center">
    <img src="images/coordinates.png" width="700" height="120">
</p>

Let's consider the rotation about $\underrightarrow{b_1}$. This will make $\underrightarrow{b_1}$ parallel to $\underrightarrow{a_1}$ and the rotation matrix reduces to 

$$
    C_{ab} = \begin{bmatrix} 1 & 0 & 0 \\\\
    0 & \cos{\theta} & \cos{(\frac{\pi}{2}-\theta)} \\\\
    0 & \cos{(\frac{\pi}{2}+ \theta)} & \cos{(\theta)} 
    \end{bmatrix} \equiv \begin{bmatrix}
        1 & 0 & 0 \\\\
        0  & \cos{(\theta)} & \sin{(\theta)} \\\\ 0 & -\sin{(\theta)} & \cos{(\theta)}
    \end{bmatrix} \equiv C_1
$$

This defines a principal rotation and, since it is a rotation about the 1-axis, we can denote it by $C_1$. The other principal rotations about the 2-axis ($\underrightarrow{b_2}$) and 3-axis ($\underrightarrow{b_3}$) 

$$
C_{2} \equiv
\begin{bmatrix}
\cos{(\theta)} & 0 & -\sin{(\theta)} \\\\
        0  & 1 & 0 \\ \\\sin{(\theta)} & 0 & \cos{(\theta)} \end{bmatrix}, \: \: C_{3} \equiv
\begin{bmatrix}
\cos{(\theta)} & \sin{(\theta)} & 0 \\\\
        -\sin{(\theta)}  & \cos{(\theta)} & 0 \\\\ 0 & 0 & 1 \end{bmatrix}
$$

These are the three principal rotation matrices.

We can use the ```PrinRot(a,phi)``` to construct the principal rotation matrix where ```a``` is the principal axis (1,2,3) and ```phi``` the displacement in degrees. 

[Example]()

## Euler Rotation

Euler's Theorem provides a way to represent rotational transformations as a rotation about a unique axis passing through a fixed point, offering a concise and widely used framework for describing rotations in three-dimensional space. Specifically, it states that any general displacement of a rigid body with one point fixed can be represented as a rotation about the axis through that point.

Directional cosine matrices can also be expressed as Euler-axis rotations about a unit-normal axis $\underrightarrow{a}$ and a rotation angle $\phi$
$$
    C(a,\phi) = \cos\phi \bold{I} + (1-\cos \phi)aa^{T} - sin\phi \; a^{\times}
$$

The rotation axis $\underrightarrow{a}$ can be expressed in either the initial or final frame of the transformation.

We can use the ```AxisAngle(a,phi)```, where ```a``` is the axis we want to rotate about  and ```phi``` the displacement in degrees. 

[Example]()