defmodule Diskv do
  def start, do: Graft.start

  def put(server, key, value) do
    Graft.request(server, {:put, key, value})
  end

  def fetch(server, key) do
    Graft.request(server, {:fetch, key})
  end

  def delete(server, key) do
    Graft.request(server, {:delete, key})
  end
end
