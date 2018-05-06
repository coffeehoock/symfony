import React from 'react'
import ReactDOM from 'react-dom'
import createClass from 'create-react-class'

import {BrowserRouter as Router ,Route ,Link ,browserHistory} from 'react-router-dom'


// console.log(BrowserRouter);
// import 'react-router'

// import {BrowserRouter ,Route ,Link} from 'react-router-dom'
// // import createBrowerHistory from 'history/CreateBrowerHistory'
//
// const history = createBrowerHistory();
// var React = require('react');
// var ReactDOM = require('react-dom');
// require('babel-preset-react');
// require('jsx');


// var h1 = React.createElement('h1' ,null ,'Hello world');
//
// ReactDOM.render(
//     h1,
//     document.getElementById('react')
// );
//
// console.log(document.getElementById('react'));
if (document.getElementById('react')){
    ReactDOM.render(
        <div>
            <h1>Hello Alex roza</h1>
            <h1>Hello pall </h1>
        </div> ,
        document.getElementById('react')
    );
}

let Links = document.getElementById('Link');

console.log(Links.children[0].href);


// const home = createClass(
//      <div>
//          <h2>home</h2>
//      </div>
// );
//
// const news = createClass(
//     <div>
//         <h2>news</h2>
//     </div>
// );

// class navigations extends React.Component {
//     render(){
//         return(
//             <BrowserRouter>
//                 <Route path="/" component={home} />
//                 <Route path="/news" component={news} />
//             </BrowserRouter>
//         )
//     }
// }

const Home = createClass({
    render: function() {
        return (
            <div className="home">
                <h1>home</h1>
            </div>
        );
    }
});

const News = createClass({
    render: function() {
        return (
            <div className="News">
                <h1>News</h1>
            </div>
        );
    }
});


const Li = createClass({
    render: function() {
        return (
            {/*<a href="/"></a>*/}
        );
    }
});

// const Roting = createClass({
//     render: function() {
//         return (
//             <Router>
//                 {/*<Route exact path="/" component={Home} />*/}
//                 <Route path="/news" component={News} />
//             </Router>
//
//         );
//     }
// });

ReactDOM.render(
    <Router>

        <div>
            <Link to="./"/>dwdw
            <Route exact path="/" component={Home} />
            <Route exact path="/news" component={News} />
        </div>

    </Router> ,
    document.getElementById('react')
);




