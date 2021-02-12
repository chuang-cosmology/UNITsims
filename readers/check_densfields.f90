! Code to read the unformatted fortran binary  CIC density fields  from UNITSIM project.
! It computes the main statistics of the field.
! sigma, variance, skewness and kurtosis.
!
!

integer grid,gridz,iseed

real*4,allocatable ::   rho(:,:,:)

double precision ss,ss2,ss3, ss4, totval

character*80  filename

print*, ' Input densfield'

read (*,'(A)') filename

open(1,file=filename, form='unformatted',status='old')

read (1,err=112) grid,grid, gridz,iseed
goto 113
112 rewind 1
read (1,err=112) grid,grid, gridz
iseed =00000

113 print*, 'GRID=', grid,grid,gridz,' SEED=',iseed

allocate(rho(grid,grid,gridz))


 do kk=1,gridz
    read(1)  ((RHO(II,JJ,KK), ii=1,GRID),jj=1,GRID)
 enddo

close(1)


ss=0.

!$OMP PARALLEL DO DEFAULT (SHARED) PRIVATE(I,J,K) REDUCTION(+:ss)
do K=1,grid
   do J=1,grid
      do I=1,grid
         ss = ss + rho(i,j,k)
      enddo
   enddo
enddo

totval = float(grid)**3

ss = ss / totval

print*, ' Mean valuel=', ss

ss2=0.
ss3=0.
ss4=0.

!$OMP PARALLEL DO DEFAULT (SHARED) PRIVATE(I,J,K) REDUCTION(+:ss2)
do K=1,grid
   do J=1,grid
      do I=1,grid
        ss2 = (ss-rho(i,j,k))**2 + ss2
        ss3 = (ss-rho(i,j,k))**3 +ss3
        ss4  =  (ss-rho(i,j,k))**4 +ss4
      enddo
   enddo
enddo


ss2 = sqrt(ss2 / totval)
ss3=  ss3/totval
ss4 = ss4/totval

ss3= ss3/ss2**3
ss4=ss4/ss2**4  -3

print*, ' Min-Max values ', Minval(rho), Maxval(rho)




print*, ' Varianza=', ss2*ss2
print*, ' Desviacion tipica=', ss2
print*, ' Coef. Variance=', ss2/ss
print*, ' Skeyness=', ss3
print*, ' Kurtosis=', ss4


stop
end



