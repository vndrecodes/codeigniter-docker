# codeigniter-docker
 
## Run
1. Run `docker-compose up -d` in `docker` directory
2. Wait until `codeigniter-php-fpm` container finished executing the docker-entrypoint.sh script (`run.sh`)
3. Copy `env` to `.env` inside `www/myapp` directory
4. Set `CI_ENVIRONMENT` and `app.baseURL` in `.env` file (do not forget to uncommend lines):
```conf
CI_ENVIRONMENT = development
app.baseURL = 'http://localhost:<PORT>/' # Port has to match the port which nginx is listening (8010 in that case)
```

## Troubleshooting
* Some content is not loading (e.g. Debugbar)
  * Requests to `index.php?debugbar` throws error like `NS_ERROR_CONNECTION_REFUSED`
  * This might happen when `app.baseURL` does not match with nginx configuration (document root, port...)
  * `App.php->baseURL` may be worth looking at as well