type assertions
type result

@module("chai") external chaiAssert: assertions = "assert"

@send external equal: (assertions, 'a, 'a) => unit = "equal"

@val external it: (string, @uncurry (unit => unit)) => unit = "it"

it("SMALL LATIN LETTER A goes to Alpha", () =>
{
  chaiAssert->equal(LatinSpellingAlphabet.spell("a"), "Alpha")
})
