# MBDYN (A free open source software for Multibody Dynamics)
Multibody Dynamics using mbdyn without a post-processor(GUI)(Blender, FreeCAD).
- [Tutorials](http://www.sky-engin.jp/en/MBDynTutorial/index.html)

#### Dependencies
- Fortran Compiler is required

###### Installation
```
sudo apt-get update
sudo apt-get install gfortran
```
- ```Matlab``` can be used as a post processor. 


#### [Installation](https://public.gitlab.polimi.it/DAER/mbdyn/-/tree/develop)
To install mbdyn
```
git clone https://public.gitlab.polimi.it/DAER/mbdyn.git
cd mbdyne
sh bootstrap.sh
./configure
make
make install
```

#### Run instructions
Enter the mbdyn directory
```
./mbdyn -f ~/free_fall/free_fall.mbd
```
