# cohesive-energy

Cohesive energy calculated with [pyiron](https://github.com/pyiron/pyiron) and [lammps](https://github.com/lammps/lammps) for the majority of the interatomic potentials available at [NIST](https://www.ctcms.nist.gov/potentials/).

The following potentials are currently missing: 

* 2015--Islam-M-M--Li-S--LAMMPS--ipr1
* 2011--Zhou-X-W--Li-Na-K-Rb-Cs-F-Cl-Br-I--LAMMPS--ipr1
* 2015--Choudhary-K--Al--LAMMPS--ipr1
* 2015--Kumar-A--Al-Ni--LAMMPS--ipr1
* 2015--Kumar-A--Al-Ni-O--LAMMPS--ipr1
* 2016--Zhou-X-W--Al-Cu--LAMMPS--ipr1
* 2018--Zhou-X-W--Al-Cu-H--LAMMPS--ipr1
* 2016--Zhang-P--Ti-O--LAMMPS--ipr1
* 2016--Zhang-P--Ti-O--LAMMPS--ipr2
* 2003--Mendelev-M-I--Fe-2--LAMMPS--ipr2
* 2015--Zhou-X-W--C-Cu--LAMMPS--ipr1
* 2015--Zhou-X-W--Cu-H--LAMMPS--ipr1
* 2012--Ward-D-K--Cd-Te-Zn--LAMMPS--ipr1
* 2013--Ward-D-K--Cd-Te-Zn--LAMMPS--ipr1
* 2014--Zhou-X-W--Cd-Te-Se--LAMMPS--ipr1
* 2012--Ward-D-K--Cd-Te--LAMMPS--ipr1
* 2015--Broqvist-P--Ce-O--LAMMPS--ipr1
* 2015--Thompson-A-P--Ta--LAMMPS--ipr1 
* 2018--Dickel-D-E--Mg-Al-Zn--LAMMPS--ipr1 
* 2015--Pascuet-M-I--Al-U--LAMMPS--ipr1
* 2009--Kim-H-K--Fe-Ti-C--LAMMPS--ipr1
* 2015--Ko-W-S--Ni-Ti--LAMMPS--ipr2
* 2013--Bonny-G--Fe-Cr-W--LAMMPS--ipr1
* 2013--Bonny-G--Fe-Cr-W-LAMMPS--ipr1
* 2014--Liyanage-L-S-I--Fe-C--LAMMPS--ipr1
* 1985--Foiles-S-M--Ni-Cu--LAMMPS--ipr1
* 1986--Foiles-S-M--Ag-Au-Cu-Ni-Pd-Pt--LAMMPS--ipr1
* 1989--Adams-J-B--Ag-Au-Cu-Ni-Pd-Pt--LAMMPS--ipr1
* 2015--Asadi-E--Ni--LAMMPS--ipr1

The protocol used to calculate the cohesive energy is available at [scripts/cohesive-energy.ipynb](https://github.com/jan-janssen/cohesive-energy/blob/master/scripts/cohesive-energy.ipynb) and the results are hosted at [https://jan-janssen.github.io/cohesive-energy/](https://jan-janssen.github.io/cohesive-energy/). 

To access the results from python use: 

```python
import pandas
import requests
r = requests.get('https://jan-janssen.github.io/cohesive-energy/index.html')
df = pandas.read_html(r.text, index_col=0)[0]
df 
```
