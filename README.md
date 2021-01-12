# UNITsims on NERSC
![alt text](./00001_128_4096_fixedAmp.jpg)

Website: http://www.unitsims.org

Main paper: https://ui.adsabs.harvard.edu/abs/2019MNRAS.487...48C/abstract

Contacts: Chia-Hsun Chuang (chuangch@stanford.edu), Gustavo Yepes (gustavo.yepes@uam.es)

---
### Contents
#### [Locations on NERSC HPSS](https://github.com/chuang-cosmology/UNITsims/blob/main/README.md#locations-on-hpss-ie-tape)
* [Full particle snapshots](https://github.com/chuang-cosmology/UNITsims#full-particle-snapshots)
* [Density field](https://github.com/chuang-cosmology/UNITsims#density-field-2-pairs-of-1gpch-high-resolution-boxes-with-128-redshifts-available)
* [0.5% of particles](https://github.com/chuang-cosmology/UNITsims#05-of-particles-2-pairs-of-1gpch-high-resolution-boxes-with-128-redshifts-available)
* [Initial conditions](https://github.com/chuang-cosmology/UNITsims#initial-conditions)
* [Halo catalogues](https://github.com/chuang-cosmology/UNITsims#halo-catalogues)
* [FastPM FoF halo catalogs](https://github.com/chuang-cosmology/UNITsims/blob/main/README.md#fastpm-fof-halo-catalogues)
#### [How to access the files](https://github.com/chuang-cosmology/UNITsims#access-the-files)
#### [How to read the files](https://github.com/chuang-cosmology/UNITsims#read-the-files) -- under construction
#### [Index of redshifts](https://github.com/chuang-cosmology/UNITsims#redshift-vs-index)
#### [Input cosmology and PK file](https://github.com/chuang-cosmology/UNITsims#input-cosmology-and-pk-file-1)

---
## Locations on NERSC HPSS (i.e. tape)
### Full particle snapshots
#### 1Gpc/h (high resolution boxes; 1st pair have 64 redshifts available and 2nd pair have only 8 redshifts)
    /home/c/chuang/UNITSIMS/1Gpc_4096_001/
    /home/c/chuang/UNITSIMS/1Gpc_4096_001_InvPhase/
    /home/c/chuang/UNITSIMS/1Gpc_4096_002/
    /home/c/chuang/UNITSIMS/1Gpc_4096_002_InvPhase/
    
#### 1Gpc/h (low resolution box; one box)
    /home/c/chuang/UNITSIMS/1Gpc_2048_001/

#### 2Gpc/h (low resolution box; 1 pair)
    /home/c/chuang/UNITSIMS/2Gpc_4096_001/
    /home/c/chuang/UNITSIMS/2Gpc_4096_001_InvPhase/

#### 3Gpc/h (low resolution boxes; 1 pair)
    /home/c/chuang/UNITSIMS/3Gpc_6144_001/


### Density field (2 pairs of 1Gpc/h high resolution boxes with 128 redshifts available)
    /home/c/chuang/UNITSIMS/DM_density_and_particle/density_and_particle/1Gpc_4096/fixedAmp_001/DM_DENS/
    /home/c/chuang/UNITSIMS/DM_density_and_particle/density_and_particle/1Gpc_4096/fixedAmp_001_InvPhase/DM_DENS/
    /home/c/chuang/UNITSIMS/DM_density_and_particle/density_and_particle/1Gpc_4096/fixedAmp_002/DM_DENS/
    /home/c/chuang/UNITSIMS/DM_density_and_particle/density_and_particle/1Gpc_4096/fixedAmp_002_InvPhase/DM_DENS/

### 0.5% of particles (2 pairs of 1Gpc/h high resolution boxes with 128 redshifts available)
    /home/c/chuang/UNITSIMS/DM_density_and_particle/density_and_particle/1Gpc_4096/fixedAmp_001/
    /home/c/chuang/UNITSIMS/DM_density_and_particle/density_and_particle/1Gpc_4096/fixedAmp_001_InvPhase/
    /home/c/chuang/UNITSIMS/DM_density_and_particle/density_and_particle/1Gpc_4096/fixedAmp_002/
    /home/c/chuang/UNITSIMS/DM_density_and_particle/density_and_particle/1Gpc_4096/fixedAmp_002_InvPhase/

### Initial conditions
    /home/c/chuang/UNITSIMS/IC/

### Halo catalogues 
#### Rockstar halos with PID
    /home/c/chuang/UNITSIMS/HALO_CATALOGS/Halo_with_PID/
#### trees (and hlist)
    /home/c/chuang/UNITSIMS/HALO_CATALOGS/tree (and hlist)

### FastPM FoF halo catalogues
#### 1Gpc/h boxes with grid size 1024^3
Same cosmology as UNIT boxes; 100 pairs of fixed-amplitude boxes and 100 pairs of normal boxes at z=0, 1, 2

     /home/c/chuang/UNITSIMS/FastPM/UNIT-FastPM-1Gpc/
#### 250Mpc/h boxes with grid size 1024^3
Same cosmology as UNIT boxes; 100 pairs of fixed-amplitude boxes and 100 pairs of normal boxes at z=0, 1, 2

     /home/c/chuang/UNITSIMS/FastPM/UNIT-FastPM-250Mpc/
    
## Access the files
### Look up the folders/files on HPSS
    $hsi
    $cd /home/c/chuang/UNITSIMS/

### Full particle snapshots (get and extract)
    $cd path_to_your_scratch_folder
    $htar -xv -f /home/c/chuang/UNITSIMS/1Gpc_4096_001/snapdir_064/snapdir_064_1.tar
    $htar -xv -f /home/c/chuang/UNITSIMS/1Gpc_4096_001/snapdir_064/snapdir_064_2.tar
    $htar -xv -f /home/c/chuang/UNITSIMS/1Gpc_4096_001/snapdir_064/snapdir_064_3.tar
    $htar -xv -f /home/c/chuang/UNITSIMS/1Gpc_4096_001/snapdir_064/snapdir_064_4.tar

P.S. 3Gpc box has 6 tar files instead of 4 files

### IC (get and extract)
    $cd path_to_your_scratch_folder
    $htar -xv -f /home/c/chuang/UNITSIMS/IC/1Gpc_4096_001.tar

### Density files (get)
    $cd path_to_your_scratch_folder
    $hsi
    $cd /home/c/chuang/UNITSIMS/DM_density_and_particle/density_and_particle/1Gpc_4096/fixedAmp_001/DM_DENS
    $get dmdens*

### 0.5% files (get)
    $cd path_to_your_scratch_folder
    $hsi
    $cd /home/c/chuang/UNITSIMS/DM_density_and_particle/density_and_particle/1Gpc_4096/fixedAmp_001/DM_PARTICLES
    $get *
#### then, unzip the bz2 files (bzip2 -d filename.bz2)

### Halo catalogs with PID
    $cd path_to_your_scratch_folder
    $hsi
    $cd /home/c/chuang/UNITSIMS/HALO_CATALOGS/Halo_with_PID/1Gpc_2048_001
    $get *
#### then, unzip the bz2 files (bzip2 -d filename.bz2)

### FoF Halo catalogs
    $cd path_to_your_scratch_folder
    $hsi
    $cd /home/c/chuang/UNITSIMS/FastPM/UNIT-FastPM-1Gpc/
    $get -R *
#### then, unzip the bz2 files (bzip2 -d filename.bz2)

## Read the files
under construction


## Redshift vs index
           n           z           a

           0       16.98     0.05561
           1       15.67        0.06
           2       15.31      0.0613
           3       14.95      0.0627
           4        14.6      0.0641
           5       14.24      0.0656
           6       13.93       0.067
           7        13.6      0.0685
           8       13.27      0.0701
           9       12.97      0.0716
          10       12.66      0.0732
          11       12.35      0.0749
          12       12.05      0.0766
          13       11.77      0.0783
          14        11.5        0.08
          15       11.22      0.0818
          16       10.96      0.0836
          17        10.7      0.0855
          18       10.44      0.0874
          19       10.19      0.0894
          20       9.941      0.0914
          21       9.707      0.0934
          22       9.471      0.0955
          23       9.235      0.0977
          24        9.01      0.0999
          25       8.794      0.1021
          26       8.579      0.1044
          27       8.372      0.1067
          28       8.166      0.1091
          29       7.961      0.1116
          30       7.764      0.1141
          31       7.576      0.1166
          32       7.389      0.1192
          33       7.203      0.1219
          34       7.026      0.1246
          35       6.849      0.1274
          36       6.675      0.1303
          37       6.508      0.1332
          38       6.342      0.1362
          39       6.184      0.1392
          40       6.022      0.1424
          41       5.873      0.1455
          42        5.72      0.1488
          43       5.575      0.1521
          44       5.431      0.1555
          45       5.289       0.159
          46        5.15      0.1626
          47       5.017      0.1662
          48       4.882        0.17
          49       4.754      0.1738
          50       4.627      0.1777
          51       4.507      0.1816
          52       4.385      0.1857
          53       4.266      0.1899
          54       4.152      0.1941
          55       4.038      0.1985
          56       3.929      0.2029
          57       3.819      0.2075
          58       3.715      0.2121
          59        3.61      0.2169
          60       3.511      0.2217
          61       3.411      0.2267
          62       3.314      0.2318
          63       3.221      0.2369
          64       3.127      0.2423
          65       3.037      0.2477
          66       2.949      0.2532
          67       2.862      0.2589
          68       2.778      0.2647
          69       2.695      0.2706
          70       2.614      0.2767
          71       2.535      0.2829
          72       2.458      0.2892
          73       2.382      0.2957
          74       2.308      0.3023
          75       2.235      0.3091
          76       2.165       0.316
          77       2.095      0.3231
          78       2.028      0.3303
          79       1.961      0.3377
          80       1.896      0.3453
          81       1.833       0.353
          82       1.771      0.3609
          83        1.71       0.369
          84        1.65      0.3773
          85       1.593      0.3857
          86       1.535      0.3944
          87        1.48      0.4032
          88       1.425      0.4123
          89       1.372      0.4215
          90       1.321      0.4309
          91        1.27      0.4406
          92        1.22      0.4505
          93       1.172      0.4605
          94       1.124      0.4709
          95       1.077      0.4814
          96       1.032      0.4922
          97      0.9873      0.5032
          98      0.9436      0.5145
          99      0.9011       0.526
         100      0.8594      0.5378
         101      0.8188      0.5498
         102      0.7787      0.5622
         103        0.74      0.5747
         104      0.7018      0.5876
         105      0.6644      0.6008
         106      0.6281      0.6142
         107      0.5924       0.628
         108      0.5574      0.6421
         109      0.5232      0.6565
         110      0.4899      0.6712
         111      0.4573      0.6862
         112      0.4253      0.7016
         113      0.3941      0.7173
         114      0.3637      0.7333
         115      0.3337      0.7498
         116      0.3045      0.7666
         117       0.276      0.7837
         118       0.248      0.8013
         119      0.2207      0.8192
         120      0.1939      0.8376
         121      0.1677      0.8564
         122      0.1422      0.8755
         123      0.1172      0.8951
         124     0.09266      0.9152
         125     0.06872      0.9357
         126     0.04526      0.9567
         127     0.02239      0.9781
         128     0.00000      1.0000

## Input cosmology and PK file
[PK file](https://github.com/chuang-cosmology/UNITsims/blob/main/Planck2015Table4LastColumn_matterpower.dat) and
[CAMB ini file](https://github.com/chuang-cosmology/UNITsims/blob/main/params_Planck15Table4LastColumn.ini) and output information from CAMB:

    Reion redshift       =   8.803
    Om_b h^2             =  0.022300
    Om_c h^2             =  0.118800
    Om_nu h^2            =  0.000640
    Om_Lambda            =  0.691111
    Om_K                 =  0.000000
    Om_m (1-Om_K-Om_L)   =  0.308889
    100 theta (CosmoMC)  =  1.040972
    N_eff (total)        =  3.046000
    1 nu, g              = 1.0153 
    m_nu*c^2/k_B/T_nu0.  =    353.71 (m_nu=  0.060 eV)
    Reion opt depth      =  0.0660
    Age of universe/GYr  =  13.798
    zstar                =  1089.69
    r_s(zstar)/Mpc       =  144.81
    100*theta            =  1.041303
    DA(zstar)/Gpc        =  13.90705
    zdrag                =  1059.51
    r_s(zdrag)/Mpc       =  147.50
    k_D(zstar) Mpc       =  0.1406
    100*theta_D          =  0.160674
    z_EQ (if v_nu=1)     =  3371.85
    k_EQ Mpc (if v_nu=1) =  0.010291
    100*theta_EQ         =  0.818604
    100*theta_rs_EQ      =  0.452206
    tau_recomb/Mpc       =  281.22  
    tau_now/Mpc          =  14188.2
    at z =  0.000 sigma8 (all matter) =  0.8147
    at z =  0.000 sigma8^2_vd/sigma8  =  0.4253
