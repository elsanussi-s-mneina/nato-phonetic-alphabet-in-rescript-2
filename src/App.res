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
    </header>
  </div>
}
