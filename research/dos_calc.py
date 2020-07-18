"""
Calculates density of states information from the velcity auto-corelation function from lammps simulation; june-20
"""

from numpy import genfromtxt
import matplotlib.pyplot as plt
from scipy.signal import correlate, find_peaks, savgol_filter
from scipy import fft, constants
import numpy as np
import csv
from numpy import exp, log

fName="1logfile_vacf.txt"
sfname=fName[:-4]
readfrom=10
readtill=909100
lenArray=readtill-readfrom+1
fil = open(fName)

# fil = open(fName)
fl = fil.readlines()

time=[]
Ax=[]
Ay=[]
Az=[]
ifx=[]
ify=[]
ifz=[]
Bx=[]
By=[]
Bz=[]

dt=0.00055

with open(fName) as fsrc:
	for i in range(readfrom-1,readtill):
		string=fl[i]
		str_val = string.split()

		t=float(str_val[0])*dt
		vacfAx=float(str_val[4])
		vacfAy=float(str_val[5])
		vacfAz=float(str_val[6])

		vacfifx=float(str_val[7])
		vacfify=float(str_val[8])
		vacfifz=float(str_val[9])

		vacfBx=float(str_val[10])
		vacfBy=float(str_val[11])
		vacfBz=float(str_val[12])

		time.append(t)
		Ax.append(vacfAx)
		Ay.append(vacfAy)
		Az.append(vacfAz)

		ifx.append(vacfifx)
		ify.append(vacfify)
		ifz.append(vacfifz)

		Bx.append(vacfBx)
		By.append(vacfBy)
		Bz.append(vacfBz)

def getvcf(dt, time, vcfx, vcfy, vcfz):
    vcfx = np.array(vcfx)
    vcfy = np.array(vcfy)
    vcfz = np.array(vcfz)
    time = np.array(time)
    vcfxn = vcfx / vcfx[0]
    vcfyn = vcfy / vcfy[0]
    vcfzn = vcfz / vcfz[0]
    vcft = (vcfx + vcfy + vcfz)
    vcft = vcft / vcft[0]
    T = dt
    N = vcft.size
    f = np.linspace(0.00001, 1 / T, N)
    fft1 = fft(vcft)
    fft2 = savgol_filter(np.abs(fft1), 507, 3)
    K = np.abs(fft2)[:N // 2] * 1 / N
    F = f[:N // 2]
    return F, K

def entropy(F, K, Temp):
#    h = constants.physical_constants['Planck constant in eV/Hz']
    h = 4.1357e-15 / 1e-12
    kb = 8.6173e-5
#    kb = constants.physical_constants['Boltzmann constant in eV/K']
#    h = h[0] / 1e-12  # Convert Planks constant to eV per THz
#    kb = kb[0]
    hfkbt = h * F / (kb * Temp)
    ehfkbt = exp(hfkbt)
    T1 = log(1 - exp(-hfkbt))
    T2 = h * F / (kb * Temp * (1 - ehfkbt))
    print(T1.size)
    print(T2.size)
    integrand = np.multiply(K, (T1 + T2))
    ent = -kb * np.trapz(integrand, F)
    return ent


if __name__ == "__main__":
    fig = plt.figure(figsize=(14, 15))

    Fa, Ka = getvcf(dt, time, Ax, Ay, Az)
    Fif, Kif = getvcf(dt, time, ifx, ify, ifz)
    Fb, Kb = getvcf(dt, time, Bx, By, Bz)

    ea=entropy(Fa, Ka, 500)
    eif=entropy(Fif, Kif, 500)
    eb=entropy(Fb, Kb, 500)

    ## sub plots using *matplotlib*
    ax = fig.add_subplot(221)
    ax.plot(Fa, Ka, color='red', linewidth=1)
    ax.set_xlim(0., 50)
    # ax.set_ylim(0, 1)
    ax.set(title="Left Grain | \ne="+str(ea), xlabel="Frequency(THz)", ylabel="Amplitude")

    ax = fig.add_subplot(223)
    ax.plot(Fif, Kif, color='teal', linewidth=1)
    ax.set_xlim(0., 50)
    # ax.set_ylim(0, 1)
    ax.set(title="Interface | \ne="+str(eif), xlabel="Frequency(THz)", ylabel="Amplitude")


    ax = fig.add_subplot(222)
    ax.plot(Fb, Kb, color='green', linewidth=1)
    ax.set_xlim(0., 50)
    # ax.set_ylim(0, 1)
    ax.set(title="Right Grain | \ne="+str(eb), xlabel="Frequency(THz)", ylabel="Amplitude")

    ax = fig.add_subplot(224)
    ax.plot(Fb, Kb, color='teal', linewidth=1)
    ax.plot(Fif, Kif, color='green', linewidth=1)
    ax.plot(Fa, Ka, color='red', linewidth=1)
    ax.set_xlim(0., 50)
    # ax.set_ylim(0, 1)
    ax.set(title="Left(red)-Interface(teal)-Right(green)", xlabel="Frequency(THz)", ylabel="Amplitude")



    plt.savefig(sfname+"resutls.png")
 #   plt.show()

## Writing to csv file

## printing dos of atom A
with open(sfname+"dos_A.csv", 'w') as csvfile:
    writer = csv.writer(csvfile, delimiter=",")
    for row in range(0,len(Fa)):
        myList = []
        myList.append(Fa[row])
        myList.append(Ka[row])
        writer.writerow(myList)

## printing dos of atom B
with open(sfname+"dos_B.csv", 'w') as csvfile:
    writer = csv.writer(csvfile, delimiter=",")
    for row in range(0,len(Fa)):
        myList = []
        myList.append(Fb[row])
        myList.append(Kb[row])
        writer.writerow(myList)

## printing dos of GB interface
with open(sfname+"dos_if.csv", 'w') as csvfile:
    writer = csv.writer(csvfile, delimiter=",")
    for row in range(0,len(Fif)):
        myList = []
        myList.append(Fif[row])
        myList.append(Kif[row])
        writer.writerow(myList)

ent_str=["ent_A","ent_if","ent_B"]
ent_val=[ea,eif,eb]
with open(sfname+"entropy.csv", 'w') as csvfile:
    writer = csv.writer(csvfile, delimiter=",")
    for row in range(0,len(ent_str)):
        myList = []
        myList.append(ent_str[row])
        myList.append(ent_val[row])
        writer.writerow(myList)
