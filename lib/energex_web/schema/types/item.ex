defmodule EnergexWeb.Schema.Types.Item do
  use Absinthe.Schema.Notation

  object :item do
    field :id, non_null(:id)
    field :description, non_null(:string)
    field :rate, non_null(:string)
    field :power_consumption, non_null(:float)
  end

  input_object :create_item_input do
    field :description, non_null(:string)
    field :rate, non_null(:string)
    field :power_consumption, non_null(:float)
  end
end
