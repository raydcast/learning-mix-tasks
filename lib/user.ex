defmodule User do
  defstruct [:username, :password]

  def build(username, password) do
    %__MODULE__{
      username: username,
      password: password
    }
  end
end
