

class ApiSettings{

  static const _BASE_URL = 'http://Smart-Store.mr-dev.tech'; /*رابط ثابت api*/

  static const _API_URL = _BASE_URL+'/api/';

  static const LOGIN = _API_URL + 'auth/login';

  static const LOGOUT= _API_URL + 'auth/logout';

  static const REGISTER= _API_URL + 'auth/register';

  static const FORGETPASSWORD= _API_URL + 'auth/forget-password';

  static const RESETPASSWORD= _API_URL + ' auth/reset-password';

}