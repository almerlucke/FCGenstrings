# FCGenstrings

## Why use FCGenstrings?

### Keep existing string values

Genstrings will always overwrite your previous strings file and destroy all the string values that were present.

**FCGenstrings** will scan the existing strings file and keep the values of the strings that are already added.

### Formatted strings file

The genstrings tool fails to create a structured strings file. That is why **FCGenstrings** will keep track of where a localized string was found and if no comment was given, it will put the filename as comment. 

Furthermore strings with equal comment are put under one comment header. Comment sections are ordered by alphabet and within a comment section all string keys are also sorted on alphabet

Example generated strings:

	/* CAPAboutViewController.xib */
	
	"ABOUT_TITLE" = "MEER INFORMATIE";
	
	
	/* CAPFilterGameFactory.m */
	
	"GAME4_TITLE" = "KIES DE JUISTE LIJST";
	
	"GAME4_TUTORIAL_STRING1" = "1. Bovenin het scherm staat uw opdracht.";
	
	"GAME4_TUTORIAL_STRING2" = "2. Onderin het scherm ziet u een aantal mogelijkheden staan.";
	
	"GAME4_TUTORIAL_STRING3" = "3. Tik op het schilderij met de juiste eigenschappen.";
	
	"GAME4_TUTORIAL_TITLE" = "UITLEG SELECTEREN";
	
	
	/* CAPFilterGameScene.m */
	
	"GAME4_SUBTITLE1" = "Kies een schilderij met de volgende eigenschappen";
	
	"GAME4_SUBTITLE2" = "Kies uit de volgende schilderijen";
	
### Localized interface file elements

**FCGenstrings** can scan interface files for occurrences of *localizableInterfaceElementKey* entries added by people using **FCLocalizableInterfaceElement**. These entries are also added to the strings file.

## Usage

If you have build the command line tool **fcgenstrings** from the Xcode project you can use it by executing it and passing it a folder name

	fcgenstrings foldername

This will scan all .m, .xib and .storyboard files and parse the localized strings. Then fcgenstrings will go through all existing Localizable.strings and update these.
