gulp = require("gulp")
config = require("../config")
connect = require("connect")
rewrite = require("connect-modrewrite")
livereload = require("gulp-livereload")

gulp.task "connect", (next) ->
  connect()
    .use(rewrite([
      "!(\.(html|css|js|png|jpg|gif|ttf|woff|svg|eot))$ /index.html [L]"
    ]))
    .use(connect.static("."))
    .use(connect.static(config.dest))
    .listen(8080, next)
