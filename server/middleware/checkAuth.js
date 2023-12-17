exports.isLoggedIn = function (req, res, next) {
  if(req.user) {
    next();
  } else {
    next();
    // return res.status(401).send('Access Denied');
  }
}