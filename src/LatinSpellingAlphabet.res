let spellLetter = (aLetter: char) =>
{
	switch aLetter
	{
	| 'a' => "Alpha"
	| 'A' => "Alpha"
	| 'b' => "Bravo"
	| 'B' => "Bravo"
	| 'c' => "Charlie"
	| 'C' => "Charlie"
	| 'd' => "Delta"
	| 'D' => "Delta"
	| 'e' => "Echo"
	| 'E' => "Echo"
	| 'f' => "Foxtrot"
	| 'F' => "Foxtrot"
	| 'g' => "Golf"
	| 'G' => "Golf"
	| 'h' => "Hotel"
	| 'H' => "Hotel"
	| 'i' => "India"
	| 'I' => "India"
	| 'j' => "Juliett"
	| 'J' => "Juliett"
	| 'k' => "Kilo"
	| 'K' => "Kilo"
	| 'l' => "Lima"
	| 'L' => "Lima"
	| 'm' => "Mike"
	| 'M' => "Mike"
	| 'n' => "November"
	| 'N' => "November"
	| 'o' => "Oscar"
	| 'O' => "Oscar"
	| 'p' => "Papa"
	| 'P' => "Papa"
	| 'q' => "Quebec"
	| 'Q' => "Quebec"
	| 'r' => "Romeo"
	| 'R' => "Romeo"
	| 's' => "Sierra"
	| 'S' => "Sierra"
	| 't' => "Tango"
	| 'T' => "Tango"
	| 'u' => "Uniform"
	| 'U' => "Uniform"
	| 'v' => "Victor"
	| 'V' => "Victor"
	| 'w' => "Whiskey"
	| 'W' => "Whiskey"
	| 'x' => "X-ray"
	| 'X' => "X-ray"
	| 'y' => "Yankee"
	| 'Y' => "Yankee"
	| 'z' => "Zulu"
	| 'Z' => "Zulu"
	| otherCharacter => String.make(1, otherCharacter)
	}
}

let rec mapCharToString = (functionToString : char => string, aString: string, i : int): string =>
{
	if (i < aString->String.length)
	{
		functionToString(String.get(aString, i)) ++ " " ++ mapCharToString(functionToString, aString, i + 1);
	}
	else
	{
		""
	}

}

let spell = (aString: string): string =>
{
	String.trim(mapCharToString(spellLetter, aString, 0))
}
