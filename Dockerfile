FROM perl:5.28.1

RUN curl -L https://cpanmin.us | perl - -M https://cpan.metacpan.org -n Plack

ADD . /app
WORKDIR /app

RUN chmod +x helloworld.psgi

CMD ["plackup", "helloworld.psgi", "--port", "8080"]