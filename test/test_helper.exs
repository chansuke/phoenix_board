ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PhoenixBoard.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PhoenixBoard.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PhoenixBoard.Repo)

