import React from 'react';

class SessionForm extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            username: '',
            password: '',
            email: ''
        };

        this.handleSubmit = this.handleSubmit.bind(this);
    }

    update(field) {
        return e => this.setState({[field]: e.currentTarget.value});
    }

    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user);
    }

    renderErrors() {
        return (
            <ul className="errors-list">
                {this.props.errors.map((error, i) => (
                    <li key={`error-${i}`}>
                        {error}
                    </li>
                ))}
            </ul>
        );
    }

    render() {

        return (
            <div className="session-form-container">
                <form onSubmit={this.handleSubmit} className="session-form-box">
                    {this.renderErrors()}
                    <div className="session-form">
                        <div className="form-top">
                            <div className="form-input">
                                <img className="input-icon" src="https://untappd.akamaized.net/assets/v3/images/login_user_ico.png" />  
                                <input type="text"
                                    value={this.state.username}
                                    onChange={this.update('username')}
                                    className="session-input username"
                                    placeholder="Username"
                                    />
                            </div>
                            <div className="form-input">
                                <img className="input-icon" src="https://untappd.akamaized.net/assets/v3/images/login_lock_ico.png" />
                                <input type="password"
                                    value={this.state.password}
                                    onChange={this.update('password')}
                                    className="session-input password"
                                    placeholder="Password"
                                    />
                            </div>
                            {this.props.formType === "signup" ? 
                                <div className="form-input">
                                    <img className="input-icon" src="https://untappd.akamaized.net/assets/v3/images/login_email_ico.png" />  
                                    <input type="text"
                                    value={this.state.email}
                                    onChange={this.update('email')}
                                    className="session-input email"
                                    placeholder="E-mail"
                                    />
                                </div>
                                : 
                                null
                            }
                        </div>
                        <div className="formBottom">
                            <input className="session-submit" type="submit" value={this.props.formType} />
                        </div>
                    </div>
                </form>
            </div>
        );

    }

};

export default SessionForm;