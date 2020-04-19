import rootReducer from './root_reducer';
const appReducer = (state, action) => {
  if (state.entities === undefined) {
    return rootReducer(state, action)
  }
  const curSession = state.session;

    if (action.type === 'CLEAR_UP_DATA') {
      state.entities = {};
      state.session = curSession;
      state.errors = {};
      state.ui = {};
    }
  return rootReducer(state, action)
}
export default appReducer;