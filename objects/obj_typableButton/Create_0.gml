roomRedirect = pointer_null; //Set this to the room that the button will navigate to
sprite = spr_inputButton;
selected = false; //If this is true, you can type into the button
subimage = 0;

ctrlDown = false; //If ctrl is pressed, this will be made true (to allow for pasting)

text = ""; // This is the text that will be displayed above the input (to specify what is being inputted)
textColor = c_white;
textFont = font_header;
textYOffset = 0; //Change this to properly center the text


typableText = ""; //This is to be changed by the user
typableYOffset = 0; //Change this to properly place the user's text (input)
typableColor = c_white;
typableFont = font_return; 
characterLimit = 32; //Change this depending on what you are taking input for

