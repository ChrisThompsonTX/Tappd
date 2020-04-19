import { connect } from 'react-redux';
import Greeting from './greeting';
import { logout } from '../../actions/session_actions';
import { openModal } from '../../actions/modal_actions'
import { clearUpData } from '../../actions/clear_actions'

const mSTP = ({session}) => {
    return{
        currentUser: session
    };
};

const mDTP = dispatch => {
    return{
        logout: ()=> dispatch(logout()),
        openModal: modal => dispatch(openModal(modal)),
        clearUpData: ()=> dispatch(clearUpData())
    }
}

export default connect(mSTP, mDTP)(Greeting);