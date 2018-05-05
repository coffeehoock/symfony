var React = require('react');
var ReactDOM = require('react-dom');


var h1 = React.createElement('h1' ,null ,'Hello world');

ReactDOM.render(
    h1,
    document.getElementById('react')
);

// console.log(document.getElementById('react'));