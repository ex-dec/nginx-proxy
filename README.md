# Nginx reverse proxy

Nginx container reverse proxy with latest nginx image

spec

- exposed http port
- single domain proxy
- http header pass

how to use

1. open nginx configuration to ./conf.d/default.conf
2. Add this line of conf to set directory and proxy passing

        location / {
            proxy_pass http://{{ IP/Domain target }}/;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
        }

3. Adjust directory and domain target to use proxy
4. Run this project with docker compose

        docker compose up -d

5. Test with this link

        http://localhost/
