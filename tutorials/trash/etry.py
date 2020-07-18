import networkx as nx
G=nx.Graph()
for i in range(3):
	G.add_node(i)
G.add_edge(1,2)
G.add_edge(2,3)
G.add_edge(1,3)
nx.draw()
