# Python 3.7
# Creative Connections

#import libraries
import networkx as nx
import matplotlib.pyplot as plt
import random

# Create graph
G = nx.Graph()

# Generate number of nodes
nodes = random.sample(range(50, 100), 4)

#Iterate through nodes and add to Graph
for n in nodes:
	G.add_node(n)

# Generate edges
edges = random.sample(range(100,150), 10)

#Iterate through edges and add to Graph
for e in edges: 
	G.add_edge(e[0], e[1])

# Draw graph
nx.draw_networkx(G)
plt.show()

# Position nodes
positions = nx.spring_layout(G)

# Set node size and color
nx.draw_networkx_nodes(G, positions, node_size=500,
                       node_color='skyblue')

# Draw edges
nx.draw_networkx_edges(G, positions, edge_color='teal')

# Label graph
nx.draw_networkx_labels(G, positions, font_size=8, font_weight='bold')

# Automatically increase graph size
plt.rcParams['figure.figsize'] = [8, 8]

# Show graph
plt.show()

# Get connected components
connected_components = nx.connected_components(G)

# Print connected components
print('Connected components: ', connected_components)

# Shortest path
shortest_path = nx.shortest_path(G, source=1, target=2)

# Print shortest path
print('Shortest path: ', shortest_path)

# Calculate degree
degree = nx.degree(G)

# Print degree
print('Degree: ', degree)

# Calculate betweenness centrality
betweenness_centrality = nx.betweenness_centrality(G)

# Print betweenness centrality
print('Betweenness centrality: ', betweenness_centrality)

# Calculate closeness centrality
closeness_centrality = nx.closeness_centrality(G)

# Print closeness centrality
print('Closeness centrality: ', closeness_centrality)

# Calculate clustering
clustering = nx.clustering(G)

# Print clustering
print('Clustering: ', clustering)

# Calculate eccentricity
eccentricity = nx.eccentricity(G)

# Print eccentricity
print('Eccentricity: ', eccentricity)

# Calculate betweenness centrality of edges
edge_betweenness_centrality = nx.edge_betweenness_centrality(G)

# Print betweenness centrality of edges
print('Edge betweenness centrality: ', edge_betweenness_centrality)

# Calculate PageRank
pr = nx.pagerank(G)

# Print PageRank
print('PageRank: ', pr)

# Calculate average shortest path length
avg_shortest_path_length = nx.average_shortest_path_length(G)

# Print average shortest path length
print('Average shortest path length: ', avg_shortest_path_length)

# Calculate density
density = nx.density(G)

# Print density
print('Density of graph: ', density)

# Calculate average clustering
avg_clustering = nx.average_clustering(G)

# Print average clustering
print('Average clustering: ', avg_clustering)

# Calculate eccentricity of nodes
eccentricity_nodes = nx.eccentricity(G, v=None, sp=None)

# Print eccentricity of nodes
print('Eccentricity of nodes: ', eccentricity_nodes)

# Calculate central points
central_points = nx.center(G)

# Print central points
print('Central points: ', central_points)

# Calculate transitive closures
transitive_closures = nx.transitive_closure(G)

# Print transitive closures
print('Transitive closures: ', transitive_closures)

# Calculate bridge edges
bridge_edges = nx.bridges(G)

# Print bridge edges
print('Bridge edges: ', bridge_edges)

# Calculate articulation points
articulation_points = nx.articulation_points(G)

# Print articulation points
print('Articulation points: ', articulation_points)

# Calculate number of edges
number_of_edges = G.number_of_edges()

# Print number of edges
print('Number of edges: ', number_of_edges)

# Calculate number of nodes
number_of_nodes = G.number_of_nodes()

# Print number of nodes
print("Number of nodes: ", number_of_nodes)

# Calculate degree of nodes
degrees_of_nodes = G.degree()

# Print degree of nodes
print('Degrees of nodes: ', degrees_of_nodes)

# Calculate nodes with a degree of 2
nodes_with_degree_2 = [node for node, degree in G.degree() if degree == 2]

# Print nodes with a degree of 2
print('Nodes with a degree of 2: ', nodes_with_degree_2)

# Calculate average degree
avg_degree = nx.average_degree_connectivity(G)

# Print average degree
print('Average degree: ', avg_degree)

# Calculate diameter
diameter = nx.diameter(G)

# Print diameter
print('Diameter: ', diameter)

# Calculate radius
radius = nx.radius(G)

# Print radius
print('Radius: ', radius)

# Calculate connected nodes
connected_nodes = nx.node_connected_component(G, 1)

# Print connected nodes
print('Connected Nodes: ', connected_nodes)

# Calculate connected subgraphs
connected_subgraphs = nx.connected_component_subgraphs(G)

# Print connected subgraphs
print('Connected subgraphs: ', connected_subgraphs)

# Find the largest connected component
largest_connected_component = max(nx.connected_component_subgraphs(G), key=len)

# Print the largest connected component
print('Largest connected component: ', largest_connected_component)

# Calculate the average shortest path length of the largest connected component
avg_shortest_path_length_largest_component = nx.average_shortest_path_length(
    largest_connected_component)

# Print the average shortest path length of the largest connected component
print('Average shortest path length of the largest component: ',
      avg_shortest_path_length_largest_component)

# Calculate the density of the largest connected component
density_largest_component = nx.density(largest_connected_component)

# Print the density of the largest connected component
print('Density of the largest component: ', density_largest_component)

# Generate random graph
rand_graph = nx.gnm_random_graph(nodes, edges)

# Draw random graph
nx.draw_networkx(rand_graph)
plt.show()

# Calculate shortest path lengths for all pairs
all_pairs_shortest_path = nx.all_pairs_shortest_path(rand_graph)

# Print shortest path lengths for all pairs
print('Shortest path lengths for all pairs: ', all_pairs_shortest_path)

# Calculate a minimum spanning tree
spanning_tree = nx.minimum_spanning_tree(rand_graph)

# Print a minimum spanning tree
print('Minimum spanning tree: ', spanning_tree.edges())

# Calculate the number of components
num_components = nx.number_connected_components(rand_graph)

# Print the number of components
print('Number of components: ', num_components)

# Calculate the average clustering of the graph
avg_clustering_graph = nx.average_clustering(rand_graph)

# Print the average clustering of the graph
print('Average clustering of graph: ', avg_clustering_graph)

# Calculate the density of the graph
density_graph = nx.density(rand_graph)

# Print the density of the graph
print('Density of graph: ', density_graph)

# Find the shortest paths between all pairs of nodes
all_pairs_shortest_paths = nx.all_pairs_dijkstra_path_length(rand_graph)

# Print the shortest paths between all pairs of nodes 
print('Shortest paths between all pairs of nodes: ', all_pairs_shortest_paths)

# Calculate diameter of the graph
diameter_graph = nx.diameter(rand_graph)

# Print diameter of the graph
print('Diameter of graph: ', diameter_graph)

# Calculate the radius of the graph
radius_graph = nx.radius(rand_graph)

# Print the radius of the graph
print('Radius of graph: ', radius_graph)

# Calculate the core number of each node
core_number = nx.core_number(rand_graph)

# Print the core number of each node
print('Core number of each node: ', core_number)

# Calculate the number of edges in the graph
num_edges_graph = rand_graph.number_of_edges()

# Print the number of edges in the graph
print('Number of edges in graph: ', num_edges_graph)

# Calculate the number of nodes in the graph
num_nodes_graph = rand_graph.number_of_nodes()

# Print the number of nodes in the graph
print('Number of nodes in graph: ', num_nodes_graph)