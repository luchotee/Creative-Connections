import java.util.*;

public class CreativeConnections { 
	public static void main(String[] args) {
		// Initializing Variables
		int numOfCreatives, numOfConnections, counter = 0;
		String creativeName, creativeType;
		List<String> creatives = new ArrayList<String>();
		List<String> connections = new ArrayList<String>();
		
		// Inputs
		Scanner scanner = new Scanner(System.in);
		System.out.println("Number of Creatives: ");
		numOfCreatives = scanner.nextInt();
		System.out.println("Number of Connections: ");
		numOfConnections = scanner.nextInt();
		
		// Adding Creatives
		while (counter < numOfCreatives) {
			System.out.println("Creative Name: ");
			creativeName = scanner.nextLine();
			System.out.println("Creative Type: ");
			creativeType = scanner.nextLine();
			
			creatives.add(creativeName + " " + creativeType);
			counter++;
		}
		
		counter = 0;
		
		// Adding Connections
		while (counter < numOfConnections) {
			System.out.println("Enter Creative Name Connecting: ");
			String creativeOne = scanner.nextLine();
			System.out.println("Enter Creative Name Connected To: ");
			String creativeTwo = scanner.nextLine();
			
			connections.add(creativeOne + " - " + creativeTwo);
			counter++;
		}
		
		// Printing Creatives & Connections
		System.out.println("\nCreative List");
		for (String creative : creatives) {
			System.out.println(creative);
		}
		System.out.println("\nConnections List");
		for (String connection : connections) {
			System.out.println(connection);
		}
	}

}