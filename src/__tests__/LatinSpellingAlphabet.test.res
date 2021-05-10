type assertions
type result

@module("chai") external chaiAssert: assertions = "assert"

@send external equal: (assertions, 'a, 'a) => unit = "equal"

@val external it: (string, @uncurry (unit => unit)) => unit = "it"

it("SMALL LATIN LETTER A goes to Alpha", () =>
	{
		let expected = "Alpha";
		let actual = LatinSpellingAlphabet.spell("a");
		chaiAssert->equal(actual, expected)
	}
)

it("Full english alphabet example with mixed case.", () =>
	{
		let expected = "Tango Hotel Echo   Quebec Uniform India Charlie Kilo   Bravo Romeo Oscar Whiskey November   Foxtrot Oscar X-ray   Juliett Uniform Mike Papa Echo Delta   Oscar Victor Echo Romeo   Tango Hotel Echo   Lima Alpha Zulu Yankee   Delta Oscar Golf .";
		let actual = LatinSpellingAlphabet.spell("The quick brown fox jumped over the lazy dog.");
		chaiAssert->equal(actual, expected);
	}
)
