#defining dictionary
ages={"Janu":24,"Shivani":23,"Sowjanya":19,"Priya":21}
v1=ages["Shivani"]
print(v1)
print(ages["Shivani"])

primes={1:2, 2:3, 4:7, 7:17 }
print(primes[4])

#This won't augment it; it will create new dictionary
primes={10:100, 20:200}
print(primes[20])

#augmending element to dictionary;
print '\nBefore updating'
print(ages)

ages.update({"Divya":22})
print '\nAfter updating'
print ages
