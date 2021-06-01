defmodule Actions do
  def hello do
    IO.puts("Hello, World.")
  end

  @spec auth(user :: %User{}) :: boolean
  def auth(%User{username: username, password: password}) do
    IO.puts(username == "foo" && password == "bar")
  end
end
