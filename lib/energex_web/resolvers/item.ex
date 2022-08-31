defmodule EnergexWeb.Resolvers.Item do
  alias Energex.Items.{Get, Create}

  def get(%{id: item_id}, _context), do: Get.call(item_id)
  def create(%{input: params}, _context), do: Create.call(params)

end
