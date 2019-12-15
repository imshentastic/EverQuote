import React from "react";
import {CSSTransition} from 'react-transition-group';

class Dropdown extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            open: false
        };
        // this.toggleDropdown = this.toggleDropdown.bind(this);
    }

    toggleDropdown() {
        this.setState({ open: !this.state.open });
    }

    render() {
        return (
            
        <div
            // style={{ border: "1px solid #CCC" }}
            onMouseEnter={() => this.toggleDropdown()}
            onMouseLeave={() => this.toggleDropdown()}
            // onBlur={() => this.toggleDropdown()}
            // onFocus={() => this.toggleDropdown()}
            tabIndex="0"
            className="splash-nav-dropdown"
        >
            Portfolio
            {this.state.open && (
                <div className="splash-nav-dropdown-sub">
                    <div>
                        <a href="https://www.linkedin.com/in/mike-shen" rel="noopener noreferrer" target="_blank">LinkedIn</a>
                    </div>
                    <div>
                        <a href="https://github.com/imshentastic" rel="noopener noreferrer" target="_blank">Github</a>
                    </div>
                    <div>
                        <a href="#" rel="noopener noreferrer" target="_blank">CV/Resume</a>
                    </div>
                </div>
            )}
        </div>
        );
    }
}
    // constructor(props) {
    //     super(props);
    //     state = {
    //         display: false,
    //     };
    // }
    

    // toggle = () => {
    //     this.setState(prevstate => ({
    //     display: !prevstate.display,
    //     }));
    // };

    // toggleDropdown () {
    //     this.setState(prevstate => ({
    //         display: !prevstate.display
    //     }));
    // }
        

    // render() {
    //     return (
    //     <div className="container">
    //         <button 
    //         className={cx('toggler', {
    //             'toggler--active': this.state.display,
    //         })}
    //         onClick={this.toggle}>Show</button>
    //         {this.state.display && (
    //         <div className="menu">
    //             <ul className="list">
    //             <li className="list-item">Rajat</li>
    //             <li className="list-item">Writes Posts</li>
    //             <li className="list-item">Loves Pizza</li>
    //             </ul>
    //         </div>
    //         )}
    //     </div>
    //     )
    // }

export default Dropdown;