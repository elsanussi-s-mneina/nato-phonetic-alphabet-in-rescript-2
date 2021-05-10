@react.component
let make = (~outputText: string) =>
{
	<>
		<label htmlFor="output"><h2>{React.string("Result")}</h2></label>
		<textarea readOnly=true id="output" rows=4 cols=30 value=outputText></textarea>
	</>
}

// We need to figure out a way to use the 
// aria-live="assertive"