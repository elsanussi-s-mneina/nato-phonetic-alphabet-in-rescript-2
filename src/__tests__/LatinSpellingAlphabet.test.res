type assertions
type result

@module("chai") external chaiAssert: assertions = "assert"

@send external equal: (assertions, 'a, 'a) => unit = "equal"

@val external it: (string, @uncurry (unit => unit)) => unit = "it"

it("SMALL LATIN LETTER A goes to Alpha", () =>
{
  chaiAssert->equal(LatinSpellingAlphabet.spell("a"), "Alpha")
})

it("Full english alphabet example with mixed case.", () =>
{
  chaiAssert->equal(LatinSpellingAlphabet.spell("The quick brown fox jumped over the lazy dog."), "Tango Hotel Echo   Quebec Uniform India Charlie Kilo   Bravo Romeo Oscar Whiskey November   Foxtrot Oscar X-ray   Juliett Uniform Mike Papa Echo Delta   Oscar Victor Echo Romeo   Tango Hotel Echo   Lima Alpha Zulu Yankee   Delta Oscar Golf .")
})
