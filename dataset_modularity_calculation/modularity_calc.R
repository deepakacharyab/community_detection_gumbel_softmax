library(igraph)
library(lsa)

#Update the filename to get the modularity for a particular dataset
h = read.graph("Polbooks.graphml", format = "graphml")

c1 = cluster_fast_greedy(h)
c2 = cluster_leading_eigen(h)
c3 = cluster_edge_betweenness(h)
c4 = cluster_walktrap(h)
c5 = cluster_infomap(h)
c6 = cluster_louvain(h)
c7 = cluster_label_prop(h)

print('cluster_fast_greedy')
modularity(c1)

print('cluster leading eigen method')
modularity(c2)

print('cluster_edge_betweenness')
modularity(c3)

print('cluster_walktrap')
modularity(c4)

print('cluster_infomap')
modularity(c5)

print('cluster_louvain')
modularity(c6)

print('cluster_label_prop')
modularity(c7)

