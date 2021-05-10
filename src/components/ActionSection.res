@react.component
let make = (~myAction: () => ()) =>
{
	<>
		<h2>{React.string("Action")}</h2>
		<button onClick={(_) => myAction()}>{React.string("Spell out each letter of text")}</button>
	</>
}