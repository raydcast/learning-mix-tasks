defmodule Mix.Tasks.Action.Extra do
  def run(args) do
    with ["build" | [username, password]] <- args do
      %{username: username, password: password}
      |> JSON.encode!()
      |> IO.puts()
    else
      ["build", _username] -> Mix.raise("Missing password param")
      ["build"] -> Mix.raise("Missing user params")
      _ -> Mix.raise("Invalid param")
    end
  end
end
