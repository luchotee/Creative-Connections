//Creative Connections

//Macros Definition
#[macro_use]
macro_rules! creative_connections {
    ($($x:expr),*) => { 
        $(
            println!("{}",$x);
        )*
    };
}

//Main function
fn main() {
    let mut connections : Vec<&str> = vec![];

    //Function to add connections
    fn add_connections(connections: &mut Vec<&str>) {
        let new_connection = [
            "Printing",
            "Drawing",
            "Sculpting",
            "Painting",
            "Photography",
            "Writing",
            "Music",
            "Dance",
            "Gardening",
            "Archery",
            "Fishing",
            "Singing",
            "Cooking",
            "Knitting",
            "Stitching",
            "Pottery",
            "Sewing",
            "Weaving",
            "Woodworking",
            "Metalworking"
        ];

        connections.extend_from_slice(&new_connection);
    }
   
    //Call the add_connections function
    add_connections(&mut connections);

    //Printing the creative connections
    creative_connections!{
        connections
    }
}