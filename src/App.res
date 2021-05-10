@react.component
let make = () => {
  let (outputText, setOutputText) = React.useState(() => "");
  let (inputText, setInputText) = React.useState(() => "");

  let handleInputTextChange = (event: ReactEvent.Form.t) =>
  {
	  let value = ReactEvent.Form.target(event)["value"];
	  setInputText(_ => value);
	  ReactEvent.Form.preventDefault(event);
  }

  let doAction = () => {
	  setOutputText((_) => LatinSpellingAlphabet.spell(inputText));
  }

  <div className="App">
    <header className="App-header">
	  <Title />
		<TextInput inputText=inputText inputTextUpdater=handleInputTextChange />
		<ActionSection myAction=doAction/>
		<TextOutput outputText=outputText />
	  /*
      <p>
        {React.string("Edit ")}
        <code> {React.string("src/App.jsx")} </code>
        {React.string(" and save to reload.")}
      </p>
      <p>
        {React.string("Page has been open for ")}
        <code> {React.string(Js.Float.toFixedWithPrecision(count /. 10., ~digits=1))} </code>
        {React.string(" seconds")}
      </p>
      <a className="App-link" href="https://reactjs.org" target="_blank" rel="noopener noreferrer">
        {React.string("Learn React")}
      </a>
	  */
    </header>
  </div>
}
