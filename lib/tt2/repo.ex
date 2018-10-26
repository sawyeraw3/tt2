defmodule Tt2.Repo do
  use Ecto.Repo,
    otp_app: :tt2,
    adapter: Ecto.Adapters.Postgres
end
