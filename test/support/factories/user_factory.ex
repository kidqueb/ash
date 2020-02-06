defmodule AshServer.UserFactory do
  alias AshServer.Accounts.User

  defmacro __using__(_opts) do
    quote do
      def user_factory do
        %User{
          email: sequence("some@email.com"),
        }
      end
    end
  end
end
