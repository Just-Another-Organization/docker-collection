# Angular Dockerfile

Angular docker file for production (`Dockerfile`) 
and for develop (`Dockerfile.dev`)

### Important

- Use `nginx.conf` file if you use routes
- For develop hot-reload feature change start script in package 
    - From `ng serve`
    - To `ng serve --host 0.0.0.0 --poll=500`