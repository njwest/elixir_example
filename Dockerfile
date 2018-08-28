# Official Elixir docker repo: https://hub.docker.com/r/_/elixir/
FROM elixir:1.7.3

RUN mkdir -p app

WORKDIR /app

COPY . /app

RUN mix local.hex --force && mix deps.get

ENV PORT=80

EXPOSE 80

CMD ["mix", "run", "--no-halt"]
