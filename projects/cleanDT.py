"""
Real Project; Reads the input.csv file; Prints the correstponding DT data into output.csv
"""


ifile="input.csv"
ofile="output1.csv"

import csv 

def strint(str_v):
	str_i=int(str_v)
	return str(str_i)

## REFERENCE VALUES(EDIT) ; dictionaries

cir_ref = {'411': 'CHENGALPATTU EDC'}
div_ref = {'MNGR': 'Maraimalainagar'}
sec_ref = {'566': 'Maraimalainagar 2'}
ss_ref = {'9159': 'Sidco SS','9107':'MM nagar SS','9108':'MM nagar SS','9109':'MM nagar SS','9110':'MM nagar SS','9111':'MM nagar SS'}
fed_ref = {'915906':'11Kv Citadel#','910708':'11Kv Sngndrm#','910705':'11Kv Auto#'}

reader_inp = csv.reader(open(ifile, 'r'), delimiter=',')

inp_r = next(reader_inp)

ni=len(inp_r)-2

w1=open(ofile,'w')
writer=csv.writer(w1)
print("Writing output...")
ss=["CIRCLE CODE","CIRCLE","DIVISION CODE","DIVISION","SECTION CODE","SECTION","SS CODE","SS","FEEDER CODE","FEEDER"]
writer.writerow(ss)

for i in range(ni):
 
	inp_r=next(reader_inp)

	cir_code=strint(inp_r[0])
	cir=cir_ref[cir_code]

	div_code=inp_r[2]
	div=div_ref[div_code]

	sec_code=strint(inp_r[4])
	sec=sec_ref[sec_code]

	ss_code=strint(inp_r[6])
	ss=ss_ref[ss_code]

	fed_code=strint(inp_r[8])
	fed=fed_ref[fed_code]

	irow=[cir_code, cir, div_code, div, sec_code, sec, ss_code, ss, fed_code, fed]

	writer.writerow(irow)

print("Written Sucessfully!!!")


