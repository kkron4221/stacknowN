defmodule StackWeb.StockItemView do
  use StackWeb, :view
  alias Timex.Format.DateTime.Formatters.Strftime
  
  def format_duration(item) do
    Enum.join([format_order_time(item), " "])
  end

  defp format_order_time(item) do
    Strftime.format!(item.order_time, "%m月%d日 %H:%M")
  end
end