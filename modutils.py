import igraph as ig
import networkx as nx

def mod_calc(G,inp, p3):
    nx.write_graphml(G,'dataset_modularity_calculation/'+inp+'.graphml') # Export NX graph to file
    g = ig.read('dataset_modularity_calculation/'+inp+'.graphml',format="graphml") # Create new IG graph from file
    return g.modularity(p3)
    
