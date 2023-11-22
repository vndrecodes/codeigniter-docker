# codeigniter-docker
 
## Run
1. Run `docker-compose up -d` in `docker` directory
2. Wait until `codeigniter-php-fpm` container finished executing the docker-entrypoint.sh script (`run.sh`)
3. Copy `env` to `.env` inside `www/myapp` directory
4. Set `CI_ENVIRONMENT` and `app.baseURL` in `.env` file (do not forget to uncommend lines):
```conf
CI_ENVIRONMENT = development
app.baseURL = 'http://localhost/'
```