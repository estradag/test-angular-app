FROM teracy/angular-cli:latest
EXPOSE 4200:4200
RUN ng --version &&\
    cd /opt &&\
    ng new angular-app --style scss -sg -si && \
    cd angular-app && \
    ng set --global packageManager=yarn
WORKDIR angular-app
ENTRYPOINT ["./ng"]

