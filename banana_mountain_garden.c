#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* A structure to represent an individual node */
struct Node {
	char* name;
	struct Node* next;
};

/* A structure to represent the actual graph */
struct Graph {
	int numNodes;
	struct Node** nodes;
};

/* Function prototypes */
struct Graph* createGraph(int numNodes);
void connectNodes(struct Graph* graph, char* from, char* to);
int getIndexOfNode(struct Graph* graph, char* name);
void printGraph(struct Graph* graph);
void freeGraph(struct Graph* graph);

/* Main function - this simply creates a graph and adds 
 * some connections to it. */
int main(int argc, char** argv)
{
	struct Graph* graph = createGraph(5);
	
	connectNodes(graph, "Alice", "Bob");
	connectNodes(graph, "Alice", "Tom");
	connectNodes(graph, "Bob", "Tom");
	connectNodes(graph, "Tom", "Jerry");
	connectNodes(graph, "Bob", "Jerry");
	connectNodes(graph, "Alice", "Frank");
	connectNodes(graph, "Frank", "Tom");
	connectNodes(graph, "Frank", "Jerry");

	printGraph(graph);
	
	freeGraph(graph);
	
	return 0;	
}

/* Creates a graph with the given number of nodes */
struct Graph* createGraph(int numNodes)
{
	struct Graph* graph = malloc(sizeof(struct Graph));
	graph->numNodes = numNodes;
	
	graph->nodes = malloc(sizeof(struct Node*) * numNodes);
	
	int i;
	for(i = 0; i < numNodes; i++) 
	{
		graph->nodes[i] = malloc(sizeof(struct Node));
		graph->nodes[i]->name = NULL;
		graph->nodes[i]->next = NULL;
	}
	
	return graph;
}

/* Connects two nodes in the graph */
void connectNodes(struct Graph* graph, char* from, char* to)
{
	int fromIndex = getIndexOfNode(graph, from);
	int toIndex = getIndexOfNode(graph, to);
	
	struct Node* fromNode = graph->nodes[fromIndex];
	
	while(fromNode->next != NULL)
	{
		fromNode = fromNode->next;
	}
	
	fromNode->next = graph->nodes[toIndex];
}

/* Retrieves the index of the given node in the graph */
int getIndexOfNode(struct Graph* graph, char* name)
{
	int i;
	for(i = 0; i < graph->numNodes; i++) 
	{
		if(graph->nodes[i]->name == NULL) 
		{
			graph->nodes[i]->name = name;
			return i;
		}
		else if(strcmp(graph->nodes[i]->name, name) == 0) 
		{
			return i;
		}
	}
	
	return -1;
}

/* Prints the graph in an easy to read format */
void printGraph(struct Graph* graph)
{
	int i;
	for(i = 0; i < graph->numNodes; i++) 
	{
		printf("%s: ", graph->nodes[i]->name);
		
		struct Node* curr = graph->nodes[i]->next;
		while(curr != NULL)
		{
			printf("%s ", curr->name);
			curr = curr->next;
		}
		
		printf("\n");
	}
}

/* Frees all memory allocated for the graph */
void freeGraph(struct Graph* graph)
{
	int i;
	for(i = 0; i < graph->numNodes; i++) 
	{
		struct Node* curr = graph->nodes[i];
		struct Node* toFree = curr;
		while(curr != NULL) 
		{
			toFree = curr;
			curr = curr->next;
			free(toFree);
		}
	}
	
	free(graph->nodes);
	free(graph);
}