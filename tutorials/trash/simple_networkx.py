import networkx as nx
G = nx.Graph()
G.add_node(1)
G.add_node(2)
G.add_node(3)
G.add_edge(1,2)
G.add_edge(1,3)
G.nodes() #to display nodes
G.edges() #to display edges
G.order() # tells no of nodes in the Graph
G.size() # tells no of edges in the graph

Z = nx.complete_graph(10) # draws a complete graph
H = nx.gnp_random_graph(20,0.5) #draws random graph of 20 nodes with edges being contected with prob 0.5
C = nx.cycle_graph(5)
L = nx.ladder_graph(5)
P = nx.path_graph(6)
S = nx.star_graph(5) #5 outer nodes and 1 hub node
W = nx.wheel_graph(5)
B = nx.barbell_graph(4,2) # 4 is no of community; 2 no of ibw nodes
O = nx.complete_graph(4)

import matplotlib.pyplot as plt
# nx.draw(G) #simply nodes
nx.draw(S,with_labels = 1)
plt.show()
