import temp from 'ic:canisters/temp';

temp.greet(window.prompt("Enter your name:")).then(greeting => {
  window.alert(greeting);
});
