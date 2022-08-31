defmodule EnergexWeb.Schema.Types.Root do
  use Absinthe.Schema.Notation
  alias EnergexWeb.Resolvers.Item, as: ItemResolver

  import_types EnergexWeb.Schema.Types.Item

  object :root_query do
    field :get_item, type: :item do
      arg :id, non_null(:id)

      resolve &ItemResolver.get/2
    end
  end

  object :root_mutation do
    field :create_item, type: :item do
      arg :input, non_null(:create_item_input)

      resolve &ItemResolver.create/2
    end
  end
end
