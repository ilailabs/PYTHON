#where direction matters here
import networkx as nx

U = nx.Graph() #undirected graph

G = nx.DiGraph()

G.nodes()

G.add_nodes_from([0, 1, 3])
G.add_nodes_from([i for i in range(5)]) # will add from 0 ... 4

list(G.nodes()) #this will convert to list.

G.edges()#to view all edges
G.out_edges()#all outgoing edges
G.in_edges()# all incommign edges
G.in_edges(1)# all in edges to node 1

G.add_edge(0,3)
G.add_edge(2,3)
G.add_edge(3,2)
G.add_edge(4,1)

list(G.out_edges(2))
