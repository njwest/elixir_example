defmodule ElixirExample.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get("/", do: send_resp(conn, 200, "Hello World"))

  get "/sample/:message" do
    send_resp(conn, 200, "#{message}")
  end

  match(_, do: send_resp(conn, 404, "404 - Not Found"))
end
