var name, nameList, surnameList;
name[0] = "Default";
name[1] = "Player";

nameList = string_split("Noah, Liam, Mason, Jacob, William, Ethan, James, Alexander, Michael, Benjamin, Elijah, Daniel, Aiden, Logan, Matthew, Lucas, Jackson, David, Oliver, Jayden, Joseph, Gabriel, Samuel, Carter, Anthony, John, Dylan, Luke, Henry, Andrew, Isaac, Christopher, Joshua, Wyatt, Sebastian, Owen, Caleb, Nathan, Ryan, Jack, Hunter, Levi, Christian, Jaxon, Julian, Landon, Grayson, Jonathan, Isaiah, Charles, Thomas, Aaron, Eli, Connor, Jeremiah, Cameron, Josiah, Adrian, Colton, Jordan, Brayden, Nicholas, Robert, Angel, Hudson, Lincoln, Evan, Dominic, Austin, Gavin, Nolan, Parker, Adam, Chase, Jace, Ian, Cooper, Easton, Kevin, Jose, Tyler, Brandon, Asher, Jaxson, Mateo, Jason, Ayden, Zachary, Carson, Xavier, Leo, Ezra, Bentley, Sawyer, Kayden, Blake, Nathaniel", ", ");
surnameList =  string_split("Smith, Johnson, Williams, Jones, Brown, Davis, Miller, Wilson, Moore, Taylor, Anderson, Thomas, Jackson, White, Harris, Martin, Thompson, Garcia, Martinez, Robinson, Clark, Rodriguez, Lewis, Lee, Walker, Hall, Allen, Young, Hernandez, King, Wright, Lopez, Hill, Scott, Green, Adams, Baker, Gonzalez, Nelson, Carter, Mitchell, Perez, Roberts, Turner, Phillips, Campbell, Parker, Evans, Edwards, Collins, Stewart, Sanchez, Morris, Rogers, Reed, Cook, Morgan, Bell, Murphy, Bailey, Rivera, Cooper, Richardson, Cox, Howard, Ward, Torres, Peterson, Gray, Ramirez, James, Watson, Brooks, Kelly, Sanders, Price, Bennett, Wood, Barnes, Ross, Henderson, Coleman, Jenkins, Perry, Powell, Long, Patterson, Hughes, Flores, Washington, Butler", ", ");
name[0] = nameList[irandom(array_length_1d(nameList)-1)];
name[1] = surnameList[irandom(array_length_1d(surnameList)-1)];

return name;
