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
    this.demoUser = this.demoUser.bind(this);
  }

  update(field) {
    return e => this.setState({[field]: e.currentTarget.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    // const user = Object.assign({}, this.state);
    this.props.processForm(this.state);
    // this.setState({
    //   username: '',
    //   password: '',
    //   email: ''
    // })
  }

  demoUser(e) {
    e.preventDefault();
    
    const demoUser = {
      username: "DemoUser",
      password: "password"
    }

    const speed = 100;

    if (this.state.username !== demoUser.username) {
      const inputUsername = setInterval(() => {
        if (this.state.username !== demoUser.username) {
          const temp = demoUser.username.slice(0, this.state.username.length + 1);
          this.setState({ username: temp });
        } else {
          clearInterval(inputUsername);
          animatePassword();
        }
      }, speed);
    }

    const animatePassword = () => {

      if (this.state.password !== demoUser.password) {
        const inputPassword = setInterval(() => {
          if (this.state.password !== demoUser.password) {
            const temp = demoUser.password.slice(0, this.state.password.length + 1);
            this.setState({ password: temp });
          } else {
            clearInterval(inputPassword);
            this.props.login(demoUser)
          }
        }, speed);
      }
    }
  }

  render() {

    return (
      <div className="session-form-container">
        <form onSubmit={this.handleSubmit} className="session-form-box">
            <div className="session-form">
              <div className="form-top">
                <div className="error-box">
                  {this.props.formType === 'login' ?
                  <div className="error">
                    {this.props.errors[0]}
                  </div>
                  :
                  null
                  }
                  {this.props.formType === 'signup' ?
                  <div className="error">
                    {this.props.errors.username}
                  </div>
                  :
                  null
                  }
                </div>
                <div className="form-input">
                  <img className="input-icon" src="https://untappd.akamaized.net/assets/v3/images/login_user_ico.png" />  
                  <input type="text"
                    value={this.state.username}
                    onChange={this.update('username')}
                    className="session-input username"
                    placeholder="Username"
                    />
                </div>
                <div className="error-box">
                  {this.props.formType === 'signup' ?
                    <div className="error">
                      {this.props.errors.password}
                    </div>
                    :
                    null
                  }
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
                  <div>
                    <div className="error-box">
                      {this.props.errors.email ? 
                        <div className="error">
                          {this.props.errors.password}
                        </div>
                      :
                        null
                      }
                    </div>
                    <div className="form-input">
                      <img className="input-icon" src="https://untappd.akamaized.net/assets/v3/images/login_email_ico.png" />  
                      <input type="text"
                      value={this.state.email}
                      onChange={this.update('email')}
                      className="session-input email"
                      placeholder="E-mail"
                      />
                    </div>


                  </div>
                  : 
                  null
                }
            </div>
            <div className="formBottom">
              <input className="session-submit" type="submit" value={this.props.formType} />
            </div>
            <button className="demo-user" onClick={this.demoUser}>Demo User</button>
          </div>
        </form>
      </div>
    );

  }

};

export default SessionForm;