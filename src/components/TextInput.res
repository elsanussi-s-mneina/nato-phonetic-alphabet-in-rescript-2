@react.component
let make = (~inputText: string, ~inputTextUpdater: ReactEvent.Form.t => ()) =>
{
	<>
		<label htmlFor="input"><h2>{React.string("Input Text")}</h2></label>
		<textarea id="input" rows=4 cols=30 value={inputText} onChange=inputTextUpdater></textarea>
	</>
}