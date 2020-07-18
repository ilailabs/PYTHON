"""
Specify the pulse center, width and max amplitude ; this generated the lammps file;28-aug-19;
"""


## Pulse data, p_center, p_width, a_max

PCenter = 10
PWidth = 4
AMax = 0.01

del_AMax = AMax/PWidth
with open("temp.lammps") as fsrc, open("new.lammps", 'w') as fnew:
    for line in fsrc:
        fnew.write(line)
        ## insert1: the group of atoms
        if '##---DefiningGroup---##' in line:
            fnew.write("group atomP0 id == "+str(PCenter))
            for i in range(PWidth):
                fnew.write('\n'+'group atomP'+str(i+1)+' id '+str(PCenter+i+1)+' '+str(PCenter-i-1))
            fnew.write('\n')
            fnew.write('group rest subtract all ')
            for i in range(PWidth+1):
                fnew.write('atomP'+str(i)+' ')
            fnew.write('\n')

## NOTE: this cannot be linear; it should follow Gaussian curve
            for i in range(PWidth+1):
                fnew.write('variable A'+str(i)+' equal '+str(AMax-i*del_AMax)+'\n')
        ##insert2: timestep
        if 'timestep  ${deltat}' in line:
            for i in range(PWidth+1):
                fnew.write("variable x"+str(i)+' equal ${A'+str(i)+'}*exp(-(time-${mean})*(time-${mean})/2/${sigma}/${sigma})*sin(${omega}*time)'+'\n')
        ##insert3: pulse width range
        if 'variable v equal 0.000' in line:
            for i in range(PWidth+1):
                fnew.write('fix P'+str(i)+' atomP'+str(i)+' move variable  v_x'+str(i)+' NULL NULL v_v NULL NULL'+'\n')

        if 'run ${runupto}' in line:
            for i in range(PWidth+1):
                fnew.write('unfix P'+str(i)+'\n')
