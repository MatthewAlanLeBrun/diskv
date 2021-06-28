defmodule Diskv.Machine do
  use Graft.Machine

  @impl Graft.Machine
  def init([]), do: {:ok, %{}}

  @impl Graft.Machine
  def handle_entry({:put, key, value}, state) do
    new_state = Map.put(state, key, value)
    {:ok, new_state}
  end
  def handle_entry({:fetch, key}, state) do
    reply = Map.fetch(state, key)
    {reply, state}
  end
  def handle_entry({:delete, key}, state) do
    new_state = Map.delete(state, key)
    {:ok, new_state}
  end
end
