import { connect } from 'react-redux';
import SplashPage from './splash_page'

const mSTP = state => {
    return{
        session: state.ui.modal
    }
}

const mDTP = dispatch => {
    return {

    }
}

export default connect(mSTP, mDTP)(SplashPage)