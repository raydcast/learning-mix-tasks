defmodule Mix.Tasks.Action do
  use Mix.Task

  def run(args) do
    case args do
      ["hello"] ->
        Actions.hello()

      ["login" | [username, password]] ->
        Actions.auth(User.build(username, password))

      [] ->
        Mix.raise("Missing param")

      _ ->
        Mix.raise("Invalid param")
    end
  end
end
