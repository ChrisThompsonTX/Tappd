import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { signup, login } from '../../actions/session_actions';
import SessionForm from './session_form';

const mSTP = ({ errors }) => {

    return {
        errors: errors.session,
        formType: 'signup'
    };
};

const mDTP = dispatch => {

    return {
        processForm: (user) => dispatch(signup(user)),
        otherForm: (
            <button onClick={() => dispatch(openModal('login'))}>
                Login
            </button>
        ),
        closeModal: () => dispatch(closeModal()),
        login: (user) => dispatch(login(user))      
    };

};

export default connect(mSTP, mDTP)(SessionForm);
